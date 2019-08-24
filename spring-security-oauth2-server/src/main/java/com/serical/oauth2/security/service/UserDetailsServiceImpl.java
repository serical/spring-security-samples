package com.serical.oauth2.security.service;

import com.serical.oauth2.entity.Permission;
import com.serical.oauth2.entity.RolePermission;
import com.serical.oauth2.entity.User;
import com.serical.oauth2.entity.UserRole;
import com.serical.oauth2.mapper.PermissionMapper;
import com.serical.oauth2.mapper.RolePermissionMapper;
import com.serical.oauth2.mapper.UserMapper;
import com.serical.oauth2.mapper.UserRoleMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

import static java.util.stream.Collectors.toList;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserMapper userMapper;
    private final UserRoleMapper userRoleMapper;
    private final RolePermissionMapper rolePermissionMapper;
    private final PermissionMapper permissionMapper;

    public UserDetailsServiceImpl(UserMapper userMapper,
                                  UserRoleMapper userRoleMapper,
                                  RolePermissionMapper rolePermissionMapper,
                                  PermissionMapper permissionMapper) {
        this.userMapper = userMapper;
        this.userRoleMapper = userRoleMapper;
        this.rolePermissionMapper = rolePermissionMapper;
        this.permissionMapper = permissionMapper;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Example userExample = new Example(User.class);
        userExample.createCriteria().andEqualTo("userName", username);
        User user = userMapper.selectOneByExample(userExample);
        if (null == user) {
            return null;
        }

        // 查询角色
        Example userRoleExample = new Example(UserRole.class);
        userRoleExample.createCriteria().andEqualTo("userId", user.getId());
        List<Long> roleIds = userRoleMapper.selectByExample(userRoleExample).parallelStream().map(UserRole::getRoleId).collect(toList());

        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();

        if (roleIds.size() > 0) {
            // 查询权限
            Example rolePermissionExample = new Example(RolePermission.class);
            rolePermissionExample.createCriteria().andIn("roleId", roleIds);
            List<Long> permissionIds = rolePermissionMapper.selectByExample(rolePermissionExample).parallelStream().map(RolePermission::getPermissionId).collect(toList());

            if (permissionIds.size() > 0) {
                // 查询权限英文名
                Example permissionExample = new Example(Permission.class);
                permissionExample.createCriteria().andIn("id", permissionIds);
                List<Permission> permissions = permissionMapper.selectByExample(permissionExample);

                if (null != permissions && permissions.size() > 0) {
                    permissions.forEach(permission -> grantedAuthorities.add(new SimpleGrantedAuthority(permission.getEnName())));
                }
            }
        }

        return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(), grantedAuthorities);
    }
}
