---
title: Decentralised IDentifiers, DID Auth, and DID Communication
subtitle: Vurucu Alt Başlık  
author: Abdulhamit Kumru
date: 2020 
theme: Dresden
colortheme: default
institute: Blokzincir Laboratuvarı
section-titles: false
fontsize: 10pt
---

### Nelerden bahsedecegiz
- DID  
- DID Auth  
- DID Communication  


# DID

### neden boyle birsey lazim, suanki sistemlerin neleri eksik
### binding identifier and keys

## What DIDs are

### SSI dan bahset
### DID Core Feautres
### DID giris slayti

## How DIDs work

## Why DIDs work

## What DIDs mean



# DID Auth
## alt basliklari planla

### DID Auth

[rwot6 DID Auth dan bahset](https://github.com/WebOfTrustInfo/rwot6-santabarbara/blob/master/final-documents/did-auth.md)

### Biz ne yapmaya calistik  DID-TLS
### TLS ten kisaca bahset
### ne yaptik ne yapamadik
### olursa ne olur olmasi icin ne lazim
### ne kadar mantikli


# DID Communication
## alt basliklari planla

### DID Communication

### trust over ip stack 
trust over ip stack semasindan didcomm un nerede oldugundan bashet

\begin{center}
  \includegraphics[width=\textwidth]{./assets/tipstack.png}
\end{center}


### Hangi Auth Protokolleri ile/yerine kullanilabilir

- OpenID ?
- LDAP ?  
    Ldap i zaten auth prot olarak kullanmamak gerekir.


### Hangi protokollerle beraber kullanilabilir  

- webRTC  
    **[HearRO](https://www.hearro.com/)** *A Blockchain Powered Phone System Using Secure Digital Identities To Deliver Better Customer Service*

- SSH (DID Auth ?)  
    *PAM kullanılarak (kolayca ?) implement edilebilir *

- websocket  
    *websocket over DID comm ...*

- webtorrent, bittorrent ???  
    *...*

- DRM ?  
    *...*

### DIDcomm nerelerde kullanilabilir 2

- webpush ?  
    push notifications over DID comm ...

- webhooks ?  
    ...

- ngok ? (sacma olabilir)  
    secure tunnels to localhost with DID comm 

### Sources and License

#### License *[Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)*

#### Sources

- [Decentralized Identifiers (DIDs) fundamentals](https://docs.google.com/presentation/d/1KGLw6WThb3Q2UUOD2tZiarb_2Q_cpUZ1jzEzWCZSGII/edit#slide=id.g39e3bfd7a1_2_28)
