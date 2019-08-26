package com.serical.oauth2.resource.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Table(name = "content")
public class Content implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 内容类目ID
     */
    @Column(name = "category_id")
    private Long categoryId;

    /**
     * 内容标题
     */
    @Column(name = "title")
    private String title;

    /**
     * 子标题
     */
    @Column(name = "sub_title")
    private String subTitle;

    /**
     * 标题描述
     */
    @Column(name = "title_desc")
    private String titleDesc;

    /**
     * 链接
     */
    @Column(name = "url")
    private String url;

    /**
     * 图片绝对路径
     */
    @Column(name = "pic")
    private String pic;

    /**
     * 图片2
     */
    @Column(name = "pic2")
    private String pic2;

    /**
     * 内容
     */
    @Column(name = "content")
    private String content;

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