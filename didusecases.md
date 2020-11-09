# did usecases

Basliklarin hiyerarsisini gozden gecir. Teknolojiler cogu zaman birbiri ile iliskili veya birbiri ile orutusuyor. Kafa karisikligini onlemek icin taksonomiyi dogru yapmak gerek.

## DID SSO

### Understanding main SSO protocols: CAS, SAML and OpenID Connect
- CAS: https://apereo.github.io/cas
- SAML: https://www.oasis-open.org/standards
- OpenID Connect : http://openid.net/developers/specs

[isimler ve tarih](https://ldapcon.org/2017/wp-content/uploads/2017/08/16_Cl%C3%A9ment-Oudot_PRE_LDAPCon2017_SSO-1.pdf)

- CAS: simple protocol, no strong security, fits internal
usage
    - [protocol flow](https://apereo.github.io/cas/4.2.x/images/cas_flow_diagram.png)
- SAML: complex protocol, very used for SaaS
authentication, good security, well established
- OpenID Connect: easy adoption with new technologies
(JSON/REST/OAuth2), mobile ready, good security, still
not wide spread

### Self-Issued OpenID Connect Provider DID Profile
- https://identity.foundation/did-siop/#did-authn
- https://ldapwiki.com/wiki/Self-Issued%20OpenID%20Provider
- https://nbviewer.jupyter.org/github/WebOfTrustInfo/rwot8-barcelona/blob/master/final-documents/did-auth-oidc.pdf#page=2&zoom=100,690,832

This specification defines the "SIOP DID Profile" (SIOP DID) that is a DID AuthN flavor to use OpenID Connect (OIDC) together with the strong decentralization, privacy and security guarantees of Decentralized Identifiers (DID) for everyone who wants to have a generic way to integrate Identity Wallets into their web applications.

We believe that using the SIOP functionality to prove ownership of a DID has multiple advantages. It reuses
existing functionality, possibly accelerating adoption relative to approaches utilizing new custom protocols.

#### NATURE OF THE DESIGN DECISIONS
- Reuse existing specs whenever possible.
- Remain compatible with existing specs that are reused.
- Layer DID Auth functionality such that it can be added incrementally without breaking existing uses of
the self-issued functionality.

#### Sorular


### DID CAS

- did-siop tan farki ne olur, did-siop uzerine avantajlari varmi ?
- ayri kullanimlarini gerektirecek caseler var mi?

### DID SAML

DID as SAML idendity provider...

#### Sorular

- tum bu protokollere SSO protokolu demek dogru mu ?
- bu protokllerin SSO disinda islevleri nelerdir ?

## DID PAM

did authn Pluggable Authentication Modullerde kullanilabilir mi ?

### PAM Recepies
- Encrypted Home Directories
- Working with Secure Shell
- Apache htaccess Made Smart
- Directory Services

Pluggable Authentication Modules
The Definitive Guide to PAM for Linux SysAdmins and
C Developers 


## DIDcomm use cases

### DIDcomm messaging
https://github.com/decentralized-identity/didcomm-messaging#relationship-to-generic-didcomm

DIDComm Messaging is the first in a potential family of related specs; others could include DIDComm Streaming, DIDComm Multicast, and so forth. DIDComm is the common adjective for all of them, meaning that all will share DID mechanisms as the basis of security.

- DIDComm Streaming ?
- DIDComm Multicast ?

### HearRo
**[HearRO](https://www.hearro.com/)** *A Blockchain Powered Phone System Using Secure Digital Identities To Deliver Better Customer Service*

DIDcomm over webRTC. 

# Caveats

## SSO

### single sign on vs same sign on
It should not be confused with *same-sign on*(Directory Server Authentication), often accomplished by using the Lightweight Directory Access Protocol (LDAP) and stored LDAP databases on (directory) servers.

For clarity, a distinction should be made between Directory Server Authentication (same-sign on) and single sign-on: Directory Server Authentication refers to systems requiring authentication for each application but using the *same credentials* from a directory server, *whereas single sign-on refers to systems where a single authentication provides access to multiple applications by passing the authentication token seamlessly to configured applications.*

https://en.wikipedia.org/wiki/Single_sign-on

