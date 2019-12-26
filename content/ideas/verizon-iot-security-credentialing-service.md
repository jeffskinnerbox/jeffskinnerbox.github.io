https://www.symantec.com/page.jsp%3Fid%3D1024-bit-migration-faq

https://en.wikipedia.org/wiki/Public_key_certificate

http://tldp.org/HOWTO/SSL-Certificates-HOWTO/x64.html

https://www.us-cert.gov/ncas/tips/ST05-010

https://www.instantssl.com/ssl-certificate-products/https.html

https://www.thawte.com/resources/getting-started/how-ssl-works/

Let’s say company A has a key pair and needs to publish his public key for public usage (aka ssl on his web site).

·         Company A must make a certificate request (CR) to a certification authority (CA) to get a certificate for his key pair.
·         The public key, but not the private key, of company A's key pair is included as part of the certificate request.
·         The CA then uses company A's identity information to determine whether the request meets the CA's criteria for issuing a certificate.
·         If the CA approves the request, it issues a certificate to company A. In brief CA signs company A's public key with his(CA's) private key, that verifies its authenticity.

So company A's public key signed with a valid CA's private key is called company A's certificate.

https://superuser.com/questions/620121/what-is-the-difference-between-a-certificate-and-a-key-with-respect-to-ssl

https://www.digicert.com/ssl-certificate/?gclid=Cj0KEQjwp83KBRC2kev0tZzExLkBEiQAYxYXOimJJaygIYOHcKr0nTk43LQMjprn2DFxPD8KvnrJlPYaAi4S8P8HAQ

https://www.namecheap.com/security/ssl-certificates.aspx?gclid=CLHNpMLb4NQCFU-2wAodzQsMag

Linux
https://askubuntu.com/questions/73287/how-do-i-install-a-root-certificate
https://askubuntu.com/questions/645818/how-to-install-certificates-for-command-line
https://help.ubuntu.com/lts/serverguide/certificates-and-security.html
https://superuser.com/questions/437330/how-do-you-add-a-certificate-authority-ca-to-ubuntu


* [How Passwordless Authentication Works](https://dzone.com/articles/how-passwordless-authentication-works?edition=305105&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-06-21)
* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide?edition=298102&utm_source=weekly%20digest&utm_medium=email&utm_campaign=wd%202017-05-17)

# Internet Security
* [An introduction to cryptography and public key infrastructure](https://opensource.com/article/18/5/cryptography-pki)
* [How internet security works: TLS, SSL, and CA](https://opensource.com/article/19/11/internet-security-tls-ssl-certificate-authority)
* [Getting started with OpenSSL: Cryptography basics](https://opensource.com/article/19/6/cryptography-basics-openssl-part-1)
* [How to use OpenSSL: Hashes, digital signatures, and more](https://opensource.com/article/19/6/cryptography-basics-openssl-part-2)

# Understanding IoT Security
How to Implement Secure Connectivity - https://medium.com/iotforall/securing-your-connectivity-5304c192bea3
* [Understanding IoT Security – Part 1 of 3: IoT Security Architecture on the Device and Communication Layers](https://iot-analytics.com/understanding-iot-security-part-1-iot-security-architecture/)
* [Understanding IoT Security – Part 2 of 3: IoT Cyber Security for Cloud and Lifecycle Management](https://iot-analytics.com/understanding-iot-cyber-security-part-2/)
* [Understanding IoT Security (Part 1 of 3): IoT Security Architecture on the Device and Communication Layers](https://dzone.com/articles/iot-security-part-1-of-3-architecture-on-the-device-and-communication-layers?edition=298148&utm_source=Spotlight&utm_medium=email&utm_campaign=iot%202017-05-23)

# Types of Digital Certificates
https://www.ibm.com/support/knowledgecenter/en/ssw_i5_54/rzahu/rzahutypesofcerts.htm
http://www.digi-sign.com/digital%20certificate/digital%20certificate%20types
https://www.slideshare.net/sheetal28sv/digital-certificates-23737438

# wolfSSL
The [wolfSSL](https://www.wolfssl.com/wolfSSL/Home.html)
is an open source embedded SSL library (formerly CyaSSL) which is lightweight, portable, C-language-based SSL/TLS library targeted at IoT, embedded, and RTOS environments primarily because of its size, speed, and feature set. It works seamlessly in desktop, enterprise, and cloud environments as well. wolfSSL supports industry standards up to the current TLS 1.3 and DTLS 1.2, is up to 20 times smaller than OpenSSL, offers a simple API, an OpenSSL compatibility layer, OCSP and CRL support,

* [What You Need to Know About the TLS 1.3 Protocol and wolfSSL’s SSL/TLS Libraries](https://www.allaboutcircuits.com/news/what-you-need-to-know-about-the-tls-1.3-protocol-and-wolfssls-ssl-tls-libra)
* [lwIP - A Lightweight TCP/IP stack](https://savannah.nongnu.org/projects/lwip/)

# Simple Certificate Enrolment Protocol (SCEP)
Simple Certificate Enrollment Protocol is a protocol designed to make
digital certificates issuance as scalable as possible.
The use of SCEP allows any standard network device to request a digital certificate
electronically and as simply as possible.
Its main characteristics are:

* Request/response model based on HTTP (GET method; optional support for POST method)
* Uses PKCS#10 as the certificate request format
* Uses PKCS#7 to convey cryptographically signed/encrypted messages
* Supports asynchronous granting by the server, with regular polling by the requester
* Has limited Certificate Revocation List (CRL) retrieval support
* Does not support online certificate revocation (OCSP)
* Requires the use of a challenge password field within the Certificate Signing Request (CSR),
which must be shared only between the server and the requester

# SSCEP
SSCEP is a command line client for the SCEP protocol
https://github.com/certnanny/sscep

# openssl
OpenSSL has got many commands. You can list them with `openssl list-standard-commands`.
Here is a brief description of some of the most important command:

* `ca` - To create certificate authorities.
* `dgst` - To compute hash functions.
* `enc` - To encrypt/decrypt using secret key algorithms. It is possible to generate using a password or directly a secret key stored in a file.
* `genrsa` - This command permits to generate a pair of public/private key for the RSA algorithm.
* `password` - Generation of “hashed passwords”.
* `pkcs12` - Tools to manage information according to the PKCS #12 standard.
* `pkcs7` - Tools to manage information according to the PKCS #7 standard.
* `rand` - Generation of pseudo-random bit strings.
* `rsa` - RSA data management.
* `rsautl` - To encrypt/decrypt or sign/verify signature with RSA.
* `verify` - Checkings for X509.
* `x509` - Data managing for X509

https://dzone.com/articles/secure-communication-with-tls-and-the-mosquitto-broker
https://geekflare.com/openssl-commands-certificates/
https://www.madboa.com/geek/openssl/
https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs
https://www.sslshopper.com/article-most-common-openssl-commands.html
https://spin.atomicobject.com/2014/05/12/openssl-commands/
https://users.dcc.uchile.cl/~pcamacho/tutorial/crypto/openssl/openssl_intro.html

# How to View Digital Certificates
* On MS Windows - https://www.comodo.com/resources/small-business/digital-certificates7.php
* How Do You View SSL Certificate Details in Google Chrome? - https://www.howtogeek.com/292076/how-do-you-view-ssl-certificate-details-in-google-chrome/

On Linux, certificates are stored `/etc/ssl/certs`.

* System-provided actual files are located at /usr/share/ca-certificates
* custom certificates goes into /usr/local/share/ca-certificates
* Whenever you put certificate in above mentioned path, run update-ca-certificate to update /etc/ssl/certs lists

```bash
# view the contents of the certificate
$ openssl x509 -text -in /etc/ssl/certs/Taiwan_GRCA.pem
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            1f:9d:59:5a:d7:2f:c2:06:44:a5:80:08:69:e3:5e:f6
    Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=TW, O=Government Root Certification Authority
        Validity
            Not Before: Dec  5 13:23:33 2002 GMT
            Not After : Dec  5 13:23:33 2032 GMT
        Subject: C=TW, O=Government Root Certification Authority
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:9a:25:b8:ec:cc:a2:75:a8:7b:f7:ce:5b:59:8a:
                    c9:d1:86:12:08:54:ec:9c:f2:e7:46:f6:88:f3:7c:
                    e9:a5:df:4c:47:36:a4:1b:01:1c:7f:1e:57:8a:8d:
                    c3:c5:d1:21:e3:da:24:3f:48:2b:fb:9f:2e:a1:94:
                    e7:2c:1c:93:d1:bf:1b:01:87:53:99:ce:a7:f5:0a:
                    21:76:77:ff:a9:b7:c6:73:94:4f:46:f7:10:49:37:
                    fa:a8:59:49:5d:6a:81:07:56:f2:8a:f9:06:d0:f7:
                    70:22:4d:b4:b7:41:b9:32:b8:b1:f0:b1:c3:9c:3f:
                    70:fd:53:dd:81:aa:d8:63:78:f6:d8:53:6e:a1:ac:
                    6a:84:24:72:54:86:c6:d2:b2:ca:1c:0e:79:81:d6:
                    b5:70:62:08:01:2e:4e:4f:0e:d5:11:af:a9:af:e5:
                    9a:bf:dc:cc:87:6d:26:e4:c9:57:a2:fb:96:f9:cc:
                    e1:3f:53:8c:6c:4c:7e:9b:53:08:0b:6c:17:fb:67:
                    c8:c2:ad:b1:cd:80:b4:97:dc:76:01:16:15:e9:6a:
                    d7:a4:e1:78:47:ce:86:d5:fb:31:f3:fa:31:be:34:
                    aa:28:fb:70:4c:1d:49:c7:af:2c:9d:6d:66:a6:b6:
                    8d:64:7e:b5:20:6a:9d:3b:81:b6:8f:40:00:67:4b:
                    89:86:b8:cc:65:fe:15:53:e9:04:c1:d6:5f:1d:44:
                    d7:0a:2f:27:9a:46:7d:a1:0d:75:ad:54:86:15:dc:
                    49:3b:f1:96:ce:0f:9b:a0:ec:a3:7a:5d:be:d5:2a:
                    75:42:e5:7b:de:a5:b6:aa:af:28:ac:ac:90:ac:38:
                    b7:d5:68:35:26:7a:dc:f7:3b:f3:fd:45:9b:d1:bb:
                    43:78:6e:6f:f1:42:54:6a:98:f0:0d:ad:97:e9:52:
                    5e:e9:d5:6a:72:de:6a:f7:1b:60:14:f4:a5:e4:b6:
                    71:67:aa:1f:ea:e2:4d:c1:42:40:fe:67:46:17:38:
                    2f:47:3f:71:9c:ae:e5:21:ca:61:2d:6d:07:a8:84:
                    7c:2d:ee:51:25:f1:63:90:9e:fd:e1:57:88:6b:ef:
                    8a:23:6d:b1:e6:bd:3f:ad:d1:3d:96:0b:85:8d:cd:
                    6b:27:bb:b7:05:9b:ec:bb:91:a9:0a:07:12:02:97:
                    4e:20:90:f0:ff:0d:1e:e2:41:3b:d3:40:3a:e7:8d:
                    5d:da:66:e4:02:b0:07:52:98:5c:0e:8e:33:9c:c2:
                    a6:95:fb:55:19:6e:4c:8e:ae:4b:0f:bd:c1:38:4d:
                    5e:8f:84:1d:66:cd:c5:60:96:b4:52:5a:05:89:8e:
                    95:7a:98:c1:91:3c:95:23:b2:0e:f4:79:b4:c9:7c:
                    c1:4a:21
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier:
                CC:CC:EF:CC:29:60:A4:3B:B1:92:B6:3C:FA:32:62:8F:AC:25:15:3B
            X509v3 Basic Constraints:
                CA:TRUE
            setCext-hashedRoot:
                0/0-...0...+......0...g*........"...(6....2.1:.Qe
    Signature Algorithm: sha1WithRSAEncryption
         40:80:4a:fa:26:c9:ce:5e:30:dd:4f:86:74:76:58:f5:ae:b3:
         83:33:78:a4:7a:74:17:19:4e:e9:52:b5:b9:e0:0a:74:62:aa:
         68:ca:78:a0:4c:9a:8e:2c:23:2e:d5:6a:12:24:bf:d4:68:d3:
         8a:d0:d8:9c:9f:b4:1f:0c:de:38:7e:57:38:fc:8d:e2:4f:5e:
         0c:9f:ab:3b:d2:ff:75:97:cb:a4:e3:67:08:ff:e5:c0:16:b5:
         48:01:7d:e9:f9:0a:ff:1b:e5:6a:69:bf:78:21:a8:c2:a7:23:
         a9:86:ab:76:56:e8:0e:0c:f6:13:dd:2a:66:8a:64:49:3d:1a:
         18:87:90:04:9f:42:52:b7:4f:cb:fe:47:41:76:35:ef:ff:00:
         76:36:45:32:9b:c6:46:85:5d:e2:24:b0:1e:e3:48:96:98:57:
         47:94:55:7a:0f:41:b1:44:24:f3:c1:fe:1a:6b:bf:88:fd:c1:
         a6:da:93:60:5e:81:4a:99:20:9c:48:66:19:b5:00:79:54:0f:
         b8:2c:2f:4b:bc:a9:5d:5b:60:7f:8c:87:a5:e0:52:63:2a:be:
         d8:3b:85:40:15:fe:1e:b6:65:3f:c5:4b:da:7e:b5:7a:35:29:
         a3:2e:7a:98:60:22:a3:f4:7d:27:4e:2d:ea:b4:74:3c:e9:0f:
         a4:33:0f:10:11:bc:13:01:d6:e5:0e:d3:bf:b5:12:a2:e1:45:
         23:c0:cc:08:6e:61:b7:89:ab:83:e3:24:1e:e6:5d:07:e7:1f:
         20:3e:cf:67:c8:e7:ac:30:6d:27:4b:68:6e:4b:2a:5c:02:08:
         34:db:f8:76:e4:67:a3:26:9c:3f:a2:32:c2:4a:c5:81:18:31:
         10:56:aa:84:ef:2d:0a:ff:b8:1f:77:d2:bf:a5:58:a0:62:e4:
         d7:4b:91:75:8d:89:80:98:7e:6d:cb:53:4e:5e:af:f6:b2:97:
         85:97:b9:da:55:06:b9:24:ee:d7:c6:38:1e:63:1b:12:3b:95:
         e1:58:ac:f2:df:84:d5:5f:99:2f:0d:55:5b:e6:38:db:2e:3f:
         72:e9:48:85:cb:bb:29:13:8f:1e:38:55:b9:f3:b2:c4:30:99:
         23:4e:5d:f2:48:a1:12:0c:dc:12:90:09:90:54:91:03:3c:47:
         e5:d5:c9:65:e0:b7:4b:7d:ec:47:d3:b3:0b:3e:ad:9e:d0:74:
         00:0e:eb:bd:51:ad:c0:de:2c:c0:c3:6a:fe:ef:dc:0b:a7:fa:
         46:df:60:db:9c:a6:59:50:75:23:69:73:93:b2:f9:fc:02:d3:
         47:e6:71:ce:10:02:ee:27:8c:84:ff:ac:45:0d:13:5c:83:32:
         e0:25:a5:86:2c:7c:f4:12
-----BEGIN CERTIFICATE-----
MIIFcjCCA1qgAwIBAgIQH51ZWtcvwgZEpYAIaeNe9jANBgkqhkiG9w0BAQUFADA/
MQswCQYDVQQGEwJUVzEwMC4GA1UECgwnR292ZXJubWVudCBSb290IENlcnRpZmlj
YXRpb24gQXV0aG9yaXR5MB4XDTAyMTIwNTEzMjMzM1oXDTMyMTIwNTEzMjMzM1ow
PzELMAkGA1UEBhMCVFcxMDAuBgNVBAoMJ0dvdmVybm1lbnQgUm9vdCBDZXJ0aWZp
Y2F0aW9uIEF1dGhvcml0eTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
AJoluOzMonWoe/fOW1mKydGGEghU7Jzy50b2iPN86aXfTEc2pBsBHH8eV4qNw8XR
IePaJD9IK/ufLqGU5ywck9G/GwGHU5nOp/UKIXZ3/6m3xnOUT0b3EEk3+qhZSV1q
gQdW8or5BtD3cCJNtLdBuTK4sfCxw5w/cP1T3YGq2GN49thTbqGsaoQkclSGxtKy
yhwOeYHWtXBiCAEuTk8O1RGvqa/lmr/czIdtJuTJV6L7lvnM4T9TjGxMfptTCAts
F/tnyMKtsc2AtJfcdgEWFelq16TheEfOhtX7MfP6Mb40qij7cEwdScevLJ1tZqa2
jWR+tSBqnTuBto9AAGdLiYa4zGX+FVPpBMHWXx1E1wovJ5pGfaENda1UhhXcSTvx
ls4Pm6Dso3pdvtUqdULle96ltqqvKKyskKw4t9VoNSZ63Pc78/1Fm9G7Q3hub/FC
VGqY8A2tl+lSXunVanLeavcbYBT0peS2cWeqH+riTcFCQP5nRhc4L0c/cZyu5SHK
YS1tB6iEfC3uUSXxY5Ce/eFXiGvviiNtsea9P63RPZYLhY3Naye7twWb7LuRqQoH
EgKXTiCQ8P8NHuJBO9NAOueNXdpm5AKwB1KYXA6OM5zCppX7VRluTI6uSw+9wThN
Xo+EHWbNxWCWtFJaBYmOlXqYwZE8lSOyDvR5tMl8wUohAgMBAAGjajBoMB0GA1Ud
DgQWBBTMzO/MKWCkO7GStjz6MmKPrCUVOzAMBgNVHRMEBTADAQH/MDkGBGcqBwAE
MTAvMC0CAQAwCQYFKw4DAhoFADAHBgVnKgMAAAQUA5vwIhP/lSg209yewDL7MTqK
UWUwDQYJKoZIhvcNAQEFBQADggIBAECASvomyc5eMN1PhnR2WPWus4MzeKR6dBcZ
TulStbngCnRiqmjKeKBMmo4sIy7VahIkv9Ro04rQ2JyftB8M3jh+Vzj8jeJPXgyf
qzvS/3WXy6TjZwj/5cAWtUgBfen5Cv8b5Wppv3ghqMKnI6mGq3ZW6A4M9hPdKmaK
ZEk9GhiHkASfQlK3T8v+R0F2Ne//AHY2RTKbxkaFXeIksB7jSJaYV0eUVXoPQbFE
JPPB/hprv4j9wabak2BegUqZIJxIZhm1AHlUD7gsL0u8qV1bYH+Mh6XgUmMqvtg7
hUAV/h62ZT/FS9p+tXo1KaMuephgIqP0fSdOLeq0dDzpD6QzDxARvBMB1uUO07+1
EqLhRSPAzAhuYbeJq4PjJB7mXQfnHyA+z2fI56wwbSdLaG5LKlwCCDTb+HbkZ6Mm
nD+iMsJKxYEYMRBWqoTvLQr/uB930r+lWKBi5NdLkXWNiYCYfm3LU05er/ayl4WX
udpVBrkk7tfGOB5jGxI7leFYrPLfhNVfmS8NVVvmONsuP3LpSIXLuykTjx44Vbnz
ssQwmSNOXfJIoRIM3BKQCZBUkQM8R+XVyWXgt0t97EfTsws+rZ7QdAAO671RrcDe
LMDDav7v3Aun+kbfYNucpllQdSNpc5Oy+fwC00fmcc4QAu4njIT/rEUNE1yDMuAl
pYYsfPQS
-----END CERTIFICATE-----
```


Key files goes into `/etc/ssl/private`.
The `/etc/ssl/private/ssl-snakeoil.key`
is a key created by ssl-cert package post-install scripts.
It's created for the snakeoil user and should not be deleted.
It is used by the `ssl-cert` package
which enables unattended installs of packages that need to create SSL certificates.
https://askubuntu.com/questions/396120/what-is-the-purpose-of-the-ssl-cert-snakeoil-key

# Microchip's ATECC508A
 many other MCUs) stores those private TLS credentials unprotected on its flash memory. Anybody who has physical access to the device can steal private keys and get access to the cloud.

* CryptoAuth Xplained Pro - http://www.atmel.com/tools/cryptoauthxplainedpro.aspx
* [The two-dollar secure IoT solution: Mongoose OS + ESP8266 + ATECC508 + AWS IoT](https://mongoose-os.com/blog/mongoose-esp8266-atecc508-aws/)
* http://www.cnx-software.com/2017/03/07/secure-iot-connectivity-with-nodemcu-esp8266-board-atecc508a-crypto-chip-mongoose-os-and-aws-iot/
* [Security Module For Raspberry Pi](https://www.zymbit.com/zymkey/#Cryptosilicon)
* https://www.youtube.com/watch?v=g1jB11wOQDg
* http://embeddedblog.blogspot.com/2016/02/atmel-moves-iot-security-into-hardware.html


# Introduction to OAuth 2.0
OAuth stands for Open Authorization.
It’s a free and open protocol, that allows users to share their private resources
with a third party while keeping their own credentials secret.
OAuth does this by granting the requesting (client) applications a token,
once access is approved by the user.
Each token grants limited access to a specific resource for a specific period.

OAuth2 supports “delegated authentication”, that is,
it grants access to another person or application to perform actions on your behalf.

* [The Nuts and Bolts of API Security: Protecting Your Data at All Times](https://www.youtube.com/watch?v=tj03NRM6SP8)
* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide?edition=298102&utm_source=weekly%20digest&utm_medium=email&utm_campaign=wd%202017-05-17)
* [Steps to Building Authentication and Authorization for RESTful APIs](https://dzone.com/articles/steps-to-building-authentication-and-authorization?edition=245486&utm_source=WeeklyDigest&utm_source=WeeklyDigest&utm_medium=email&utm_medium=email&utm_campaign=wd2017-02-08&utm_campaign=wd2017-02-08)

Deep Dive into OAuth and OpenID Connect: http://nordicapis.com/api-security-oauth-openid-connect-depth/
How To Control User Identity Within Microservices: http://nordicapis.com/how-to-control-user-identity-within-microservices/
Equipping Your API With The Right Armor: http://nordicapis.com/api-security-equipping-your-api-with-the-right-armor/
The Four Defenses of the API Stronghold: http://nordicapis.com/api-security-the-4-defenses-of-the-api-stronghold/
Techniques and Technologies to Increase API Security: http://nordicapis.com/building-a-secure-api/

# Glossory of Terms
**Public Key Infrastructure (PKI)**
supports the distribution and identification of public encryption keys, enabling users and computers to both securely exchange data over networks such as the Internet and verify the identity of the other party.
Without PKI, sensitive information can still be encrypted (ensuring confidentiality) and exchanged, but there would be no assurance of the identity (authentication) of the other party. Any form of sensitive data exchanged over the Internet is reliant on PKI for security.
A typical PKI includes the following key elements:

* A trusted party, called a certificate authority (CA), acts as the root of trust and provides services that authenticate the identity of individuals, computers and other entities
* A registration authority, often called a subordinate CA, certified by a root CA to issue certificates for specific uses permitted by the root
* A certificate database, which stores certificate requests and issues and revokes certificates
* A certificate store, which resides on a local computer as a place to store issued certificates and private keys

**Registration Authority (RA)**
is an authority in a network that verifies user requests for a digital certificate and tells the certificate authority (CA) to issue it. RAs are part of a public key infrastructure (PKI), a networked system that enables companies and users to exchange information and money safely and securely. The digital certificate contains a public key that is used to encrypt and decrypt messages and digital signatures.

for more
http://searchsecurity.techtarget.com/definition/certificate-authority


What is an X.509 Certificate? - https://stormpath.com/blog/what-x509-certificate
Simple Certificate Enrollment Protocol (SCEP) and Untrusted Devices - https://www.youtube.com/watch?v=SfMeKnch3YA
SSL Certificate Explained - https://www.youtube.com/watch?v=SJJmoDZ3il8

# Definitions
[An Overview of Cryptography](http://www.garykessler.net/library/crypto.html)

* [**Information Security (InfoSec) or Data Security**]()
 is the practice of preventing unauthorized access, use, disclosure, disruption,
 modification, inspection, recording or destruction of information.
 It is a general term that can be used regardless of the form the data may take (e.g. electronic, physical).
* [**Confidentiality**]()
involves a set of rules or a promise that limits access or places restrictions on certain types of information.
* [**Data Integrity]()
is the maintenance of, and the assurance of the accuracy and consistency of, data over its entire life-cycle.
* [**Authentication**]()
is the act of confirming the truth of an attribute of a single piece of data (a datum) claimed true by an entity.
* [**Non-Repudiation**](https://en.wikipedia.org/wiki/Non-repudiation)
refers to fact that the author of a statement will not be able to successfully challenge
the authorship of the statement or validity of an associated statement or data.
* [**Identification**]()
is the act of stating or otherwise indicating a claim purportedly attesting to a person or thing's identity,
authentication is the process of actually confirming that identity.

* [**Encryption**](https://en.wikipedia.org/wiki/Encryption)
is the process of encoding a message or information in such a way that only authorized parties can access it.
The reverse process of accessing the encoded messages is called decryption.
* [**Cryptography**](https://en.wikipedia.org/wiki/Cryptography)
is about constructing and analyzing protocols that prevent third parties or the public from reading private messages
and concerns data confidentiality, data integrity, authentication, and non-repudiation.
* [**Private Key or Secret Key or Symmetric Cryptography**]()
use the same cryptographic keys for both encryption and decryption.
The keys may be identical or there may be a simple transformation to go between the two keys.
This requirement that both parties have access to the secret key
is one of the main drawbacks of symmetric key encryption, in comparison to public-key encryption.
* [**Public Key or Asymmetric Cryptography**](https://en.wikipedia.org/wiki/Public-key_cryptography)
is any cryptographic system that uses pairs of keys: public keys which may be disseminated widely,
and private keys which are known only to the owner.
This accomplishes two functions: authentication, which is when the public key
is used to verify that a holder of the paired private key sent the message,
and encryption, whereby only the holder of the paired private key can decrypt the message encrypted with the public key.
* [**Hybrid Cryptography**](https://www.youtube.com/watch?v=VPvZbMXfv_0)
* [**steganography**]()
aims at hiding the present existence of the message,
where cryptography aims at hiding the main content of a message.
Steganography does this by embedding a message into the multimedia data (image, sound, video, etc.).
Objective of steganography is to modify the carrier in a way that is not perceptible and hence,
it looks just like ordinary message.

* [**ECC (Elliptic Curve Cryptography)**]()
* [**RSA**]()
is one of the first practical public-key cryptosystems and is widely used for secure data transmission.
RSA is made of the initial letters of the surnames of Ron Rivest, Adi Shamir, and Leonard Adleman, who first publicly described the algorithm in 1978.
* [**DSA (Digital Signature Algorithm )**](https://en.wikipedia.org/wiki/Digital_Signature_Algorithm)
is a Federal Information Processing Standard for digital signatures. In August 1991 the National Institute of Standards and Technology (NIST) proposed DSA for use in their Digital Signature Standard (DSS) and adopted it as FIPS 186 in 1993.
* [**Diffie–Hellman key exchange (D–H)**]()

* [**Mutual Authentication or Two-way Authentication**]()
refers to two parties authenticating each other at the same time,
being a default mode of authentication in some protocols (IKE, SSH) and optional in others (TLS).
* [**Transport Layer Security (TLS)**](https://en.wikipedia.org/wiki/Transport_Layer_Security)
protocol aims primarily to provide privacy and data integrity between two communicating computer applications.
* [**Secure Sockets Layer (SSL)**](http://info.ssl.com/article.aspx?id=10241)
is the standard security technology for establishing an encrypted link between a web server and a browser.
This link ensures that all data passed between the web server and browsers remain private and integral.
* [**SSL/TLS**](https://luxsci.com/blog/ssl-versus-tls-whats-the-difference.html)
TLS is the new name replacement for SSL.
Namely, SSL protocol got to version 3.0; TLS 1.0 is "SSL 3.1".
We sometimes say "SSL/TLS".
* [**Pretty Good Privacy (PGP)**](https://en.wikipedia.org/wiki/Pretty_Good_Privacy)
encryption program provides cryptographic privacy and authentication for data communication.
PGP is used for signing, encrypting, and decrypting texts, e-mails, files, directories,
and whole disk partitions and to increase the security of e-mail communications.
* [**SSH**]()
* [**S/MIME**]()
* [**IPsec**]()

* [**Cryptanalysis**](https://en.wikipedia.org/wiki/Cryptanalysis)
* [**Side-channel Attack**](https://en.wikipedia.org/wiki/Side-channel_attack)
is any attack based on information gained from the physical implementation of a cryptosystem,
rather than brute force or theoretical weaknesses in the algorithms (e.g. cryptanalysis).

* [hash function](https://en.wikipedia.org/wiki/Hash_function)
is any function that can be used to map data of arbitrary size to data of fixed size.
The values returned by a hash function are called hash values, hash codes, digests, or simply hashes.
* [cryptographic hash function](https://en.wikipedia.org/wiki/Cryptographic_hash_function)
allows one to easily verify that some input data maps to a given hash value,
but if the input data is unknown, it is deliberately difficult to reconstruct it
(or equivalent alternatives) by knowing the stored hash value.
This is used for assuring integrity of transmitted data, and is the building block for HMACs,
which provide message authentication.
* [SHA-2 (Secure Hash Algorithm 2)](https://en.wikipedia.org/wiki/SHA-2)
is a set of cryptographic hash functions designed by the United States National Security Agency (NSA).
The SHA-2 hash function is implemented in some widely used security applications and protocols,
including TLS and SSL, PGP, SSH, S/MIME, and IPsec.

* [public key infrastructure (PKI)](https://en.wikipedia.org/wiki/Public_key_infrastructure)
is a set of roles, policies, and procedures needed to create, manage, distribute,
use, store, and revoke digital certificates and manage public-key encryption.
The purpose of a PKI is to facilitate the secure electronic transfer of information
for a range of network activities such as e-commerce, internet banking and confidential email.
It is required for activities where simple passwords are an
inadequate authentication method and more rigorous proof is required to confirm the identity
of the parties involved in the communication and to validate the information being transferred.

* [**X.509 Certificate**](https://stormpath.com/blog/what-x509-certificate)
is a standard that defines the format of public key certificates. X.509 certificates are used in many Internet protocols, including TLS/SSL, which is the basis for HTTPS, the secure protocol for browsing the web. They're also used in offline applications, like electronic signatures. An X.509 certificate contains a public key and an identity (a hostname, or an organization, or an individual), and is either signed by a certificate authority or self-signed. When a certificate is signed by a certificate authority, or validated by another means, someone holding that certificate can rely on the public key it contains to establish secure communications with another party, or validate documents digitally signed by the corresponding private key.
* [X.509](https://en.wikipedia.org/wiki/X.509)
is a standard that defines the format of public key certificates.
X.509 certificates are used in many Internet protocols, including TLS/SSL,
which is the basis for HTTPS, the secure protocol for browsing the web.
They're also used in offline applications, like electronic signatures.
An X.509 certificate contains a public key and an identity (a hostname, or an organization, or an individual),
and is either signed by a certificate authority or self-signed.
When a certificate is signed by a certificate authority, or validated by another means,
someone holding that certificate can rely on the public key it contains to establish
secure communications with another party, or validate documents digitally signed by the corresponding private key.
* [**digital certificate**](https://en.wikipedia.org/wiki/Public_key_certificate)
also known as **public key certificate**, **digital certificate**, or **identity certificate**,
is an electronic document used to prove the ownership of a public key.
* [certification authority (CA)](https://en.wikipedia.org/wiki/Certificate_authority)
or certificate authority or certificate server
is an entity that issues digital certificates.
* [root certificate](https://en.wikipedia.org/wiki/Root_certificate)
is a public key certificate that identifies a root certificate authority (CA).
Root certificates are self-signed and form the basis of an X.509-based public key infrastructure (PKI).
* [self-signed certificate](https://en.wikipedia.org/wiki/Self-signed_certificate)
is an digital certificate that is signed by the same entity whose identity it certifies.
This term has nothing to do with the identity of the person
or organization that actually performed the signing procedure.
In technical terms a self-signed certificate is one signed with its own private key.

* [digital signature](https://en.wikipedia.org/wiki/Digital_signature)
is a mathematical scheme for demonstrating the authenticity of digital messages or documents.
A valid digital signature gives a recipient reason to believe that
the message was created by a known sender (authentication),
that the sender cannot deny having sent the message (non-repudiation),
and that the message was not altered in transit (integrity).
* [message authentication or data origin authentication](https://en.wikipedia.org/wiki/Message_authentication)
is a property that a message has not been modified while in transit
(data integrity) and that the receiving party can verify the source of the message.
Message authentication does not necessarily include the property of non-repudiation.
Message authentication is typically achieved by using message authentication codes (MACs),
authenticated encryption (AE) or digital signatures.

* [attack vectors]()
is the method that this code uses to propagate itself or infect a computer.
This sense is similar to, and derived from, its meaning in biology.
* [attack surface]()
of a software environment is the sum of the different points (the "attack vectors")
where an unauthorized user (the "attacker") can try to enter data to
or extract data from an environment.
Keeping the attack surface as small as possible is a basic security measure.

# Microchip's ATECC508A
 many other MCUs) stores those private TLS credentials unprotected on its flash memory. Anybody who has physical access to the device can steal private keys and get access to the cloud.

* CryptoAuth Xplained Pro - http://www.atmel.com/tools/cryptoauthxplainedpro.aspx
* [The two-dollar secure IoT solution: Mongoose OS + ESP8266 + ATECC508 + AWS IoT](https://mongoose-os.com/blog/mongoose-esp8266-atecc508-aws/)
* http://www.cnx-software.com/2017/03/07/secure-iot-connectivity-with-nodemcu-esp8266-board-atecc508a-crypto-chip-mongoose-os-and-aws-iot/
* [Security Module For Raspberry Pi](https://www.zymbit.com/zymkey/#Cryptosilicon)
* https://www.youtube.com/watch?v=g1jB11wOQDg
* http://embeddedblog.blogspot.com/2016/02/atmel-moves-iot-security-into-hardware.html
