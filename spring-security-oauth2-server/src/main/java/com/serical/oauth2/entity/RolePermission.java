package com.serical.oauth2.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Table(name = "role_permission")
public class RolePermission implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 角色ID
     */
    @Column(name = "role_id")
    private Long roleId;

    /**
     * 权限ID
     */
    @Column(name = "permission_id")
    private Long permissionId;

    /**
     * 创建时间
     */
    @Column(name = "create_at")
    private Date createAt;

    /**
     * 修改时间
     */
    @Column(name = "update_at")
    private Date updateAt;

    /**
     * 是否禁用, 0:否, 1:是
     */
    @Column(name = "`disable`")
    private Byte disable;

    private static final long serialVersionUID = 1L;
}