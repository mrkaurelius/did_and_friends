---
title: Decentralised IDentifiers and Friends
subtitle: Vurucu ve Akillica Alt Başlık  
author: Abdulhamit Kumru
date: 2020 
theme: CambridgeUS
colortheme: lily
institute: Blokzincir Laboratuvarı
section-titles: false
fontsize: 10pt
---

### Nelerden bahsedecegiz

- SSI and DID
- DID Fundamentals
- DID Auth  
- DID Communication  

\mbox{}
\vfill

\begin{center}
  \includegraphics[width=0.2\textwidth]{./assets/license.png}
\end{center}

\centering {License Attribution-ShareAlike 4.0 International}

# SSI and DID 

## SSI and DID

### SSI giris slayti
\begin{center}
  \includegraphics[width=0.6\textwidth]{./assets/leviathan.jpg}
\end{center}

### SSI dan bahset
ssi nedir, felsefesi kisaca
*A survey on essential components of a self-sovereign identity* alinti yap

### SSI ilkeleri
ssi ilkelerinden bahset kisaca

- self soverinty surveyini oku 
- ssi anlatan figurleri ekle

### SSI DID
SSI did iliskisinden bahset
did ile baglantisini oradan ekle

### DID giris slayti
bilgilendirici resim
- ! DID tasaraminda by design olan ozellikler neler

### DID Motivasyon

neden boyle birsey lazim, suanki sistemlerin neleri eksik

- binding identifier and keys
- ssi ile ilgisi olmayan avantajlar
    - semantic web

kullandigim sunumlari kaynak olarak goster
- DID architectual deep down
- kullandigim sunumlar ...

### DID Core Feautres
!!! bu slaytin yerini yeniden degerlendir
did gerekliliklerinden bahset, specin sagladigi esneklikten bahset 


# DID Fundamentals

### intro
- !!! primati koy
- !!! asil sunumdan bahset ve referans ver

\framesubtitle{subtitle boyle kullaniliyor}

- What DIDs are
- What DIDs mean
- Why DIDs work
- What DIDs mean

## What DIDs are
### What DIDs are

## How DIDs work
### How DIDs work

## Why DIDs work
### Why DIDs work

## What DIDs mean
### What DIDs mean

## Sovrin & Hyperledger Indy
### Sovrin 
did:sov

### Hyperledger Indy
imp of did sov





# DID Auth

### did auth giris

## rwot6 auth

### DID Auth rwot6
[rwot6 DID Auth dan bahset](https://github.com/WebOfTrustInfo/rwot6-santabarbara/blob/master/final-documents/did-auth.md)

## auth protokollerinde guncel durum

#### hali hazirdaki auth protokolleri
!!!  bu protokolleri ogren

- OAuth 
- FIDO 
- OpenID Connect 
- Kerberos 
- LDAP (Active Directory)
- SSO implementations
    - Kerberos Based
    - OAuth Based
    - Security Assertion Markup Language (SAML)
    - Smart-card Based
!!! bunlari kisaca ozetle

### Auth protokolleri taksonomisi 
!!! taksonomi yap

### Auth protokollerinin kisaca ozetleri, degerlendirme 

## Halihazirdaki Auth protokolleri ve DID Auth

### DID ve DID auth burada nerede duruyor

### DID ve DID auth potansiyeli

## DID TLS

### TLS ten kisaca bahset
tls is de facto standard of todays internet.

### Previous Works

### DID SSL
Telegram Sam did ssl den bahset

### biz ne yaptik

### Biz ne yapmaya calistik  DID-TLS Indy Auth
indy auth projesinden bahset
- motivasyonumuz neydi
- hangi toollari frameworkleri kullandik 

### ne yaptik ne yapamadik
- ne ogrendik
- neyi beceremedik

### olursa ne olur olmasi icin ne lazim olmasi ne kadar mantikli
- olmasi icin ne gerekli 
- ortada devrim varken kimin gidecegi kimin kalacagi cok belli olmuyor
- ne yapmak istedigimiz iyi anlamak lazim 





# DID Communication

## DIDcomm Intro

### DIDComm giris slayti
The purpose of DIDComm is to provide a secure, private communication methodology built atop the decentralized design of DIDs.

- !!! hyperledger aries didcomm peerdid tarihsel surec, kim kimi ortaya cikarmis
- !!! alt basliklari tarihsel akisa gore sirala

### DIDComm Design Attemps
- Secure
- Private
- Interoperable
- Transport-agnostic
- Extensible

### DIDcomm Building Blocks
- Peer DIDs
- Agents

### Peer DIDs
peer did rasyoneli

### peer DID method 
peer did methodu peer did nedir 

- tum didler resolvable olmali dedik fakat globally resolvable demedik :)

### peer did ve did comm 
peer did methodu peer did nedir 
- peer did olmadan 

### Agents

### historic agents, indy-aries   

### Hyperledger Aries 
- didcommm aries iliskisi, hyperlerdger arieste ortaya cikmis bir fikir
- DID Agents  
tabi bu isleri bizim yerimize birisi yapmasi lazim

### DID comm V2 
bundan bahsetmeye ne kadar gerek var emin degilim

#### Changes summary
- Formalization of methods used in V1
    - JWM based envelope
    - ECDH-1PU standardized form of AuthCrypt
- Both DID and key in each message
- Special Handling of Peer DIDs eliminated
- Message structure split between 'headers' and body.
- No AnonCrypt encryption method

## Trust Over IP

### trust over ip stack 
trust over ip stack semasindan didcomm un nerede oldugundan bashet

\begin{center}
  \includegraphics[width=\textwidth]{./assets/tipstack.png}
\end{center}

## DIDcomm neleri saglayabilir, iyilestirebilir

### Hangi Auth Protokolleri yerine kullanilabilir
sikintili ifade  ...

### Hangi protokollerle beraber kullanilabilir  
- webRTC  
    **[HearRO](https://www.hearro.com/)** *A Blockchain Powered Phone System Using Secure Digital Identities To Deliver Better Customer Service*

- SSH (DID Auth ?)  
    *PAM kullanılarak (kolayca ?) implement edilebilir *

- websocket  
    *websocket over DID comm ...* didcomm over websocket aries rfc lerinde onerilmis [](https://github.com/hyperledger/aries-rfcs/tree/master/features/0025-didcomm-transports#websocket)


- DID Digital Rights Management (DRM)?  
    *...*

### DIDComm Messaging
https://identity.foundation/didcomm-messaging/spec/

### DIDcomm nerelerde kullanilabilir 2

- webpush ?  
    push notifications over DID comm ...

- webhooks ?  
    ...

- ngok ? (sacma olabilir)  
    secure tunnels to localhost with DID comm 

- webtorrent, bittorrent ???  
    ...

### Sources

- [Decentralized Identifiers (DIDs) fundamentals](https://docs.google.com/presentation/d/1KGLw6WThb3Q2UUOD2tZiarb_2Q_cpUZ1jzEzWCZSGII/edit#slide=id.g39e3bfd7a1_2_28)
