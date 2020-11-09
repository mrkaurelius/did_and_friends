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

- DID Core
    - DID-common-java
- DID Auth  
- DID Communication
- Applications
    - DID SIOP identity.foundation/did-siop/
- Applicable Scenarios
    - DID CAS ?
    - DID PAM ?
    - DID SAML ?

\begin{center}
  \includegraphics[width=0.2\textwidth]{./assets/license.png}
\end{center}

\centering {License Attribution-ShareAlike 4.0 International}

### Decentralized Identifiers (DIDs) v1.0

!!! bu spec hakkinda genel bilgiler

### Identifier

#### Query
did:example:123456?query=true

### DID Syntax
- The generic DID scheme is a URI scheme conformant with [RFC3986].
- The DID scheme name MUST be an ASCII lowercase string.
- The DID method name MUST be an ASCII lowercase string.

```
did                = "did:" method-name ":" method-specific-id
method-name        = 1*method-char
method-char        = %x61-7A / DIGIT
method-specific-id = *( *idchar ":" ) 1*idchar
idchar             = ALPHA / DIGIT / "." / "-" / "_"
```

### DID URL Syntax
!!! DID URL gorseli ekle

```
did-url = did path-abempty [ "?" query ] [ "#" fragment ]
```

### DID Core Properties

- id 
- authentication
- controller
- service
- verificationMethod
- assertionMethod
- keyAgreement
- capabilityDelegation
- capabilityInvocation

### Onemli Core Prop. tan bahset

### Minimal Self-managed DID document

```json
{
  "@context": "https://www.w3.org/ns/did/v1",
  "id": "did:example:123456789abcdefghi",
  "authentication": [{
    "id": "did:example:123456789abcdefghi#keys-1",
    "type": "Ed25519VerificationKey2018",
    "controller": "did:example:123456789abcdefghi",
    "publicKeyBase58": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }],
  "service": [{
    "id":"did:example:123456789abcdefghi#vcs",
    "type": "VerifiableCredentialService",
    "serviceEndpoint": "https://example.com/vc/"
  }]
}
```

### Sources
