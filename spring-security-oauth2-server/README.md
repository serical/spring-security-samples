### Document
[Spring Security Reference](https://docs.spring.io/spring-security/site/docs/5.1.5.RELEASE/reference/html5/)  
[RFC 6749 - The OAuth 2.0 Authorization Framework](https://tools.ietf.org/html/rfc6749)

### 授权地址，获取code
[http://localhost:8080/oauth/authorize?response_type=code&client_id=2ec1d45c-8127-444f-86e4-2a1c200cc837](http://localhost:8080/oauth/authorize?response_type=code&client_id=2ec1d45c-8127-444f-86e4-2a1c200cc837)

### 获取token
```bash
curl -X POST \
  http://2ec1d45c-8127-444f-86e4-2a1c200cc837:6XJKxWWHy9KU@localhost:8080/oauth/token \
  -H 'Accept: */*' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Host: localhost:8080' \
  -H 'Postman-Token: 314492f8-1192-410e-bab4-555327f4ed8a,44fe2247-1834-4077-84d4-fb824d70c550' \
  -H 'User-Agent: PostmanRuntime/7.13.0' \
  -H 'accept-encoding: gzip, deflate' \
  -H 'authorization: Basic MmVjMWQ0NWMtODEyNy00NDRmLTg2ZTQtMmExYzIwMGNjODM3OjZYSkt4V1dIeTlLVQ==' \
  -H 'cache-control: no-cache' \
  -H 'content-length: 41' \
  -H 'cookie: JSESSIONID=39ECEFD51B29D3FA55681310E813C084' \
  -b JSESSIONID=39ECEFD51B29D3FA55681310E813C084 \
  -d 'grant_type=authorization_code&code=jSXEOF'
```

```json
{
    "access_token": "aeebb551-9309-4032-af24-198f5b75991c",
    "token_type": "bearer",
    "expires_in": 43141,
    "scope": "aaa"
}
```