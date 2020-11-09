# did auth

didcomm bunlari eskitmis sayilir mi ?
- did invites ?
- did exchange ?
- did pack message ?

## Authentication of a DID

Authentication of a DID: Similar to other authentication methods, DID Auth relies on a challenge-response cycle in which a relying party authenticates the DID of an identity owner. During this cycle, an identity owner demonstrates control of their authentication material that was generated and distributed during DID Record Creation through execution of the authentication-proof mechanism.

## Challenge
The way an identity owner or their agent encounters an authentication challenge, as well as the format of the challenge, will vary depending on the situation. For example, they can come across a "Sign in with DID Auth" button or a QR code on a website. Or, in the case of an API call, the relying party may respond to a request by asking for authentication (the HTTP 401 Unauthorized response is a classic example, although DID Auth covers many use cases beyond HTTP).


### JWT format

### Reaquest Object 
did-siop
```json
{
 "alg": "ES256K",
 "typ": "JWT",
 "kid": "did:example:0xab#veri-key1"
}
{
 "iss": "did:example:0xab",
 "response_type": "id_token",
 "client_id": "https://my.rp.com/cb",
 "scope": "openid did_authn",
 "nonce": "n-0S6_WzA2Mj",
 "registration" : {
 "request_object_signing_alg" : "ES256K",
 "jwks_uri" : "did:example:0xab",
 "id_token_signed_response_alg" : [ "ES256K", "Ed25519", "RS256" ],
 }
}
```


### Responce Object 
did-siop
```json
{
 "alg": "ES256K",
 "typ": "JWT"
}
{
 "iss": "https://self-issued.me",
 "nonce": "n-0S6_WzA2Mj",
 "exp": 1311281970,
 "iat": 1311280970,
 "sub_jwk" : {
 "crv":"P-256K",
 "kid":"did:example:0xcd#verikey-1",
 "kty":"EC",
 "x":"7KEKZa5xJPh7WVqHJyUpb2MgEe3nA8Rk7eUlXsmBl-M",
 "y":"3zIgl_ml4RhapyEm5J7lvU-4f5jiBvZr4KgxUjEhl9o"
 },
 "sub": "9-aYUQ7mgL2SWQ_LNTeVN2rtw7xFP-3Y2EO9WV22cF0",
 "did" : "did:example:0xcd"
}
```


## did jwt

```javascript
const didJWT = require('did-jwt')
const signer = didJWT.SimpleSigner('278a5de700e29faae8e40e366ec5012b5ec63d36ec77e8a2417154cc1d25383f');

let jwt = await didJWT.createJWT({aud: 'did:ethr:0xf3beac30c498d9e26865f34fcaa57dbb935b0d74', exp: 1957463421, name: 'uPort Developer'},
                 {alg: 'ES256K', issuer: 'did:ethr:0xf3beac30c498d9e26865f34fcaa57dbb935b0d74', signer})
console.log(jwt);
```

```json
{
  header: { typ: 'JWT', alg: 'ES256K' },
  payload: {
    iat: 1571692233,
    exp: 1957463421,
    aud: 'did:ethr:0xf3beac30c498d9e26865f34fcaa57dbb935b0d74',
    name: 'uPort Developer',
    iss: 'did:ethr:0xf3beac30c498d9e26865f34fcaa57dbb935b0d74'
  },
  signature: 'kkSmdNE9Xbiql_KCg3IptuJotm08pSEeCOICBCN_4YcgyzFc4wIfBdDQcz76eE-z7xUR3IBb6-r-lRfSJcHMiAA',
  data: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NkstUiJ9.eyJpYXQiOjE1NzE2OTIyMzMsImV4cCI6MTk1NzQ2MzQyMSwiYXVkIjoiZGlkOmV0aHI6MHhmM2JlYWMzMGM0OThkOWUyNjg2NWYzNGZjYWE1N2RiYjkzNWIwZDc0IiwibmFtZSI6InVQb3J0IERldmVsb3BlciIsImlzcyI6ImRpZDpldGhyOjB4ZjNiZWFjMzBjNDk4ZDllMjY4NjVmMzRmY2FhNTdkYmI5MzViMGQ3NCJ9'
}
```
