### 1、授权地址，获取code
http://localhost:8080/oauth/authorize?response_type=code&client_id=2ec1d45c-8127-444f-86e4-2a1c200cc837

### 2、获取token
```shell script
curl -X POST \
  http://2ec1d45c-8127-444f-86e4-2a1c200cc837:6XJKxWWHy9KU@localhost:8080/oauth/token \
  -H 'Accept: */*' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Authorization: Basic MmVjMWQ0NWMtODEyNy00NDRmLTg2ZTQtMmExYzIwMGNjODM3OjZYSkt4V1dIeTlLVQ==' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Length: 41' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Cookie: JSESSIONID=BD5072661CC53A670FC79F455C60A644' \
  -H 'Host: localhost:8080' \
  -H 'Postman-Token: 20d63181-78a9-45b8-894a-11663d1540de,1d101bc9-b2be-404d-b2bc-96ee83f2e89b' \
  -H 'User-Agent: PostmanRuntime/7.15.2' \
  -H 'cache-control: no-cache' \
  -d 'grant_type=authorization_code&code=t7HH4Y'
```

```json
{
    "access_token": "77274772-2a1f-4d16-b8a8-034c01737b60",
    "token_type": "bearer",
    "refresh_token": "28f803f3-00d1-4700-975f-bda339a20b0e",
    "expires_in": 42965,
    "scope": "appp"
}
```

### 3、访问资源
```shell script
curl -X GET \
  http://localhost:8081/api/content/selectAll \
  -H 'Accept: */*' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Authorization: Bearer 77274772-2a1f-4d16-b8a8-034c01737b60' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: JSESSIONID=26DB2B738EA0DCC70066D44F84F34B56' \
  -H 'Host: localhost:8081' \
  -H 'Postman-Token: b6e3d9be-c808-49e7-a472-152a9f9a554e,56a620b6-8040-4a72-b607-c60a813887f8' \
  -H 'User-Agent: PostmanRuntime/7.15.2' \
  -H 'cache-control: no-cache'
```

```json
{
    "messageId": "p1RGxnZ2Y",
    "status": 0,
    "message": "",
    "data": [
        {
            "id": 1,
            "categoryId": 1,
            "title": "标题",
            "subTitle": "子标题",
            "titleDesc": "标题说明",
            "url": "http://www.jd.com",
            "pic": null,
            "pic2": null,
            "content": null,
            "createAt": "2019-08-26T15:31:40.000+0000",
            "updateAt": "2019-08-26T15:31:40.000+0000",
            "disable": 0
        },
        {
            "id": 2,
            "categoryId": 1,
            "title": "ad2",
            "subTitle": "ad2",
            "titleDesc": "ad2",
            "url": "http://www.baidu.com",
            "pic": null,
            "pic2": null,
            "content": null,
            "createAt": "2019-08-26T15:31:40.000+0000",
            "updateAt": "2019-08-26T15:31:40.000+0000",
            "disable": 0
        },
        {
            "id": 3,
            "categoryId": 1,
            "title": "ad3",
            "subTitle": "ad3",
            "titleDesc": "ad3",
            "url": "http://www.sina.com.cn",
            "pic": null,
            "pic2": null,
            "content": null,
            "createAt": "2019-08-26T15:31:40.000+0000",
            "updateAt": "2019-08-26T15:31:40.000+0000",
            "disable": 0
        },
        {
            "id": 4,
            "categoryId": 1,
            "title": "ad4",
            "subTitle": "ad4",
            "titleDesc": "ad4",
            "url": "http://www.funtl.com",
            "pic": null,
            "pic2": null,
            "content": null,
            "createAt": "2019-08-26T15:31:40.000+0000",
            "updateAt": "2019-08-26T15:31:40.000+0000",
            "disable": 0
        }
    ]
}
```

### 4、想要出现授权页面，需要删除[oauth_access_token]、[oauth_refresh_token]两个表的数据，清除登录Cookies
OAuth Approval  

Do you authorize "2ec1d45c-8127-444f-86e4-2a1c200cc837" to access your protected resources?  

    scope.appp: Approve Deny  
按钮  

### 5、修改了权限如何生效
1. http://localhost:8080/login
2. http://localhost:8080/oauth/authorize?client_id=2ec1d45c-8127-444f-86e4-2a1c200cc837&response_type=code
3. 重新获取access_token
4. 重新访问资源权限才会生效

