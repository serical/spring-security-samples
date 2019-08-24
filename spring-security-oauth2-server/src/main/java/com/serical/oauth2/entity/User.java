package com.serical.oauth2.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Table(name = "`user`")
public class User implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 用户ID
     */
    @Column(name = "`uid`")
    private Long uid;

    /**
     * 用户账号
     */
    @Column(name = "user_name")
    private String userName;

    /**
     * 用户密码
     */
    @Column(name = "`password`")
    private String password;

    /**
     * 用户手机号
     */
    @Column(name = "phone")
    private String phone;

    /**
     * 用户昵称
     */
    @Column(name = "user_nick")
    private String userNick;

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