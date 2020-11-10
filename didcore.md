# did core
Decentralized Identifiers (DIDs) v1.0  
https://identity.foundation/peer-did-method-spec/index.html  


## 1. Introduction

## 2. Terminology

## 3. Identifier

## 5. Core Properties 

- id: defined in § 5.1 DID Subject
- alsoKnownAs: defined in § 5.1.1 alsoKnownAs
- controller: defined in § 5.2 Control
- verificationMethod: defined in § 5.3 Verification Methods. Sub-properties include id, type, controller.
- authentication: defined in § 5.4.1 Authentication.
- assertionMethod: defined in § 5.4.2 Assertion.
- keyAgreement: defined in § 5.4.3 Key Agreement.
- capabilityDelegation: defined in § 5.4.5 Capability Delegation.
- capabilityInvocation: defined in § 5.4.4 Capability Invocation.
- service: defined in § 5.5 Service Endpoints. Sub-properties include id, type and serviceEndpoint.

### id

The DID subject is denoted with the id property at the top level of a DID document

```json
{
  "id": "did:example:21tDAKCERh95uGgKbJNHYp"
}
```

#### alsoKnownAs

A DID subject can have multiple identifiers for different purposes, or at different times


### Control

Authorization is the mechanism used to state how operations are performed on behalf of the DID subject. A DID controller is authorized to make changes to the respective DID document.

**NOTE: Authorization vs authentication**

```json
# DID document with a controller property
{
  "@context": "https://www.w3.org/ns/did/v1",
  "id": "did:example:123456789abcdefghi",
  "controller": "did:example:bcehfew7h32f32h7af3",
  "service": [{
    "type": "VerifiableCredentialService",
    "serviceEndpoint": "https://example.com/vc/"
  }]
}
```

### Verification Methods
- !!! burayi genislet
- !!! en onemli bolumlerden biri

A DID document can express verification methods, such as cryptographic keys, which can be used to authenticate or authorize interactions with the DID subject or associated parties

```json
# Example verification methods
{
  "@context": ["https://www.w3.org/ns/did/v1", "https://w3id.org/security/v1"],
  "id": "did:example:123456789abcdefghi",
  ...
  "verificationMethod": [{
    "id": ...,
    "type": ...,
    "controller": ...,
    ...
  ]}
}
```

```json
{
...
# Embedding and referencing verification methods
  "authentication": [
    "did:example:123456789abcdefghi#keys-1",
    {
      "id": "did:example:123456789abcdefghi#keys-2",
      "type": "Ed25519VerificationKey2018",
      "controller": "did:example:123456789abcdefghi",
      "publicKeyBase58": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    }
  ],
...
}
```

| key type | support  |
|---|---|
|  RSA | (RsaVerificationKey2018)	RSA public key values MUST be encoded as a JWK [RFC7517] using the publicKeyJwk property.  |
| ed25519 |  (Ed25519VerificationKey2018)	Ed25519 public key values MUST either be encoded as a JWK [RFC7517] using the publicKeyJwk or be encoded as the raw 32-byte public key value in Base58 Bitcoin format [BASE58] using the publicKeyBase58 property. |
| secp256k1	  |  Secp256k1 public key values MUST either be encoded as a JWK [RFC7517] using the publicKeyJwk or be encoded as the raw 33-byte public key value in Base58 Bitcoin format [BASE58] using the publicKeyBase58 property. |
| Curve25519  |  (X25519KeyAgreementKey2019)	Curve25519 (also known as X25519) public key values MUST either be encoded as a JWK [RFC7517] using the publicKeyJwk or be encoded as the raw 32-byte public key value in Base58 Bitcoin format [BASE58] using the publicKeyBase58 property. |
| JWK  |  (JsonWebKey2020)	Key types listed in JOSE, represented using [RFC7517] using the publicKeyJwk property. |

```json
# Various public keys
{
  "@context": ["https://www.w3.org/ns/did/v1", "https://w3id.org/security/v1"],
  "id": "did:example:123456789abcdefghi",
  "verificationMethod": [{
    "id": "did:example:123#_Qq0UL2Fq651Q0Fjd6TvnYE-faHiOpRlPVQcY_-tA4A",
    "type": "JsonWebKey2020",
    "controller": "did:example:123",
    "publicKeyJwk": {
      "crv": "Ed25519",
      "x": "VCpo2LMLhn6iWku8MKvSLg2ZAoC-nlOyPVQaO3FxVeQ",
      "kty": "OKP",
      "kid": "_Qq0UL2Fq651Q0Fjd6TvnYE-faHiOpRlPVQcY_-tA4A"
    }
  }, {
    "id": "did:example:123456789abcdefghi#keys-1",
    "type": "Ed25519VerificationKey2018",
    "controller": "did:example:pqrstuvwxyz0987654321",
    "publicKeyBase58": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }],
}
```

## 11. Examples


# peer did
Peer DID Method Specification  


## Caveats

- did resolving vs did dereferening
- didlerin niteledigi seyler hakkinda bilgi tasimasini istemeyiz, diddoctaki nesneye dair gereksiz alanlar mahremiyeti ihlal edebilir.




## graphics

- https://github.com/w3c/did-core/issues/199, https://user-images.githuabusercontent.com/3335245/74909780-dfd46200-536d-11ea-8e39-c30dfc028601.png

- https://www.w3.org/TR/did-core/diagrams/did_architecture_overview.svg


