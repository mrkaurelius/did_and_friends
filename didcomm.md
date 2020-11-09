# didcomm

https://github.com/hyperledger/aries-rfcs/tree/master/concepts/0005-didcomm

## didcomm messaging

https://github.com/decentralized-identity/didcomm-messaging
Message-Based, Asynchronous, and Simplex

### V2 (DIF)

The version of DIDComm incubated in the Hyperledger Aries community is referred to as Version 1 (V1). This spec describes the next version, referred to as Version 2 (V2). This section will describe the changes between V1 and V2, useful to members of the Aries community.

[whats new](https://github.com/decentralized-identity/didcomm-messaging/blob/c4ea1477e8ed967bba070b452ca12a7d2ed52019/guide/whatsnew.md) 
[encryption spec](https://github.com/decentralized-identity/DIDComm-js/blob/master/docs/encryption-spec.md)
[aries encryption spec](https://github.com/hyperledger/aries-rfcs/blob/master/features/0019-encryption-envelope/README.md)


### didcomm-js
JS implementation of pack and unpack https://github.com/decentralized-identity/DIDComm-js

### Summary of Changes

- Formalization of methods used in V1
    - JWM based envelope
    - ECDH-1PU standardized form of AuthCrypt
- Both DID and key in each message
- Special Handling of Peer DIDs eliminated
- Message structure split between 'headers' and body.
- No AnonCrypt encryption method.

# trust over IP

https://github.com/hyperledger/aries-rfcs/tree/master/concepts/0289-toip-stack


