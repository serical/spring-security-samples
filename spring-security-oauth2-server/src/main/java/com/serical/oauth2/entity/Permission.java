package com.serical.oauth2.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Table(name = "permission")
public class Permission implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 父ID
     */
    @Column(name = "parent_id")
    private Long parentId;

    /**
     * 权限名
     */
    @Column(name = "`name`")
    private String name;

    /**
     * 权限英文名
     */
    @Column(name = "en_name")
    private String enName;

    @Column(name = "url")
    private String url;

    /**
     * 备注
     */
    @Column(name = "description")
    private String description;

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