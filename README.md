# did and friends

### Notlar
- gereginden fazla degindigim yerler olabilir
- giris slayti  
- ikna edici bir giris hazirla  
- did in argumanlarini daha belirgin yap  
- aktif gelistirilen did methodlarindan bahset
- oncesi 15 daki
- Authentication a kadar hizli gec
- json ld yi iyi anla, sunumda bahset
- kimlik yontemlerini ozetleyen gorselleri ekle
- didlerin kendini ispat mekanizmalari
- kurumlardan bahset (w3c, dif, ietf, hypledger(linux fond.))
- her specteci her MUSTi kullanmadim
- bunu nereye eklemeli https://w3c.github.io/did-spec-registries/
- her slaytin en az 30 saniye konusulacak materyali olmali
- gorsel az kaldi gorsel eklemeye calis

### Sources 
- https://www.w3.org/TR/did-core/
- https://w3c-ccg.github.io/did-resolution/
- https://github.com/WebOfTrustInfo/rwot5-boston/blob/master/topics-and-advance-readings/did-primer.md
- https://github.com/WebOfTrustInfo/rwot6-santabarbara/blob/master/final-documents/
- https://docs.google.com/presentation/d/1Iv98aPWuZmRwiF01VtRjYgFHrmJGK2uOu3Iq18ALWmQ/edit#slide=id.g39c3cb0292_2_265
- https://docs.google.com/presentation/d/1vE__6RkCf0q-t8Q1Z6NKLf2D4uNxdOx-DM12KU7-MHg/edit#slide=id.g3d709bed59_2_205

### compile

```bash
pandoc -t beamer md/sunum.md -o pdf/sunum.pdf --slide-level=3
pandoc -t beamer md/sunum_1.md -o pdf/sunum_2.pdf --slide-level=3
pandoc -t beamer md/sunum_2.md -o pdf/sunum_2.pdf --slide-level=3
pandoc -t beamer md/sunum_3.md -o pdf/sunum_2.pdf --slide-level=3
```
