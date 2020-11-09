---
title: Decentralised IDentifiers and Friends
subtitle: Vurucu ve Akillica Alt Başlık  
author: Abdulhamit Kumru
date: 2020 
theme: Madrid
colortheme: default
institute: Blokzincir Laboratuvarı
section-titles: false
fontsize: 10pt
---

### Nelerden bahsedecegiz

- DID core spec
- DID-common-java
- DID Auth  
- DID Communication  
- Applications
    - DID SIOP
- Applicable Scenarios
    - DID CAS ?
    - DID PAM ?
    - DID SAML ?
    - DIDComm Streaming ?
    - DIDComm Multicast ?

\mbox{}
\vfill

\begin{center}
  \includegraphics[width=0.2\textwidth]{./assets/license.png}
\end{center}

\centering {License Attribution-ShareAlike 4.0 International}

### jwt decoded

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
  signature: 'kkSmdNE9Xbiql_KCg3IptuJotm08pSEeC...',
  data: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NkstUiJ9.
    eyJpYXQiOjE1NzE2OT...
}
```

### Sources

- [Decentralized Identifiers (DIDs) fundamentals](https://docs.google.com/presentation/d/1KGLw6WThb3Q2UUOD2tZiarb_2Q_cpUZ1jzEzWCZSGII/edit#slide=id.g39e3bfd7a1_2_28)
