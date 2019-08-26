package com.serical.oauth2.enums;

import lombok.Getter;

/**
 * 响应体枚举
 *
 * @author serical 2019-03-23 10:09:10
 */
@Getter
public enum ResultEnums {

    SUCCESS(0, ""),
    ERROR(-1, "系统错误"),
    PARAM_ERROR(1, "参数错误"),
    RATE_LIMIT(2, "超出请求频率"),
    NO_TERMINAL_TYPE(3, "terminalType 不能为空"),
    LOGIN_ERROR(1001, "账号或者密码错误"),
    DISABLE_ERROR(1002, "账号被禁用"),
    NOT_LOGIN(2001, "未登录");

    private int key;
    private String value;

    ResultEnums(int key, String value) {
        this.key = key;
        this.value = value;
    }
}
