
* [GPG Cheatsheet](http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/gpg-cs.html)

* [Practical Public Key Cryptography](https://hackaday.com/2017/10/18/practical-public-key-cryptography/)
* [Security basics with GPG, OpenSSH and OpenSSL](http://www.integralist.co.uk/posts/security-basics.html)
* [OpenPGP Best Practices](https://help.riseup.net/en/security/message-security/openpgp/best-practices)
* [GnuPG Commands - Examples](http://www.spywarewarrior.com/uiuc/gpg/gpg-com-4.htm#4-3)

* [How To Use GPG to Encrypt and Sign Messages on an Ubuntu 12.04 VPS](https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages-on-an-ubuntu-12-04-vps)
* [Creating GPG Keys](https://fedoraproject.org/wiki/Creating_GPG_Keys)
* [Creating a new GPG key](http://keyring.debian.org/creating-key.html)
* [Quick'n easy gpg cheatsheet](http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/)
* [GPG Quick Start: A quick HOWTO for getting started with GnuPG](https://www.madboa.com/geek/gpg-quickstart/)
* [GPG Tutorial](https://futureboy.us/pgp.html)
* [How Pretty Good Privacy works, and how you can use it for secure communication](https://medium.freecodecamp.org/how-does-pretty-good-privacy-work-3f5f75ecea97)

* [Using OpenSSL to encrypt messages and files on Linux](http://how-to.linuxcareer.com/using-openssl-to-encrypt-messages-and-files)
* [Convert keys between GnuPG, OpenSsh and OpenSSL](http://www.sysmic.org/dotclear/index.php?post/2010/03/24/Convert-keys-betweens-GnuPG%2C-OpenSsh-and-OpenSSL)
* [How to encrypt files with GPG and OpenSSL on GNU / Linux](http://pc-freak.net/blog/how-to-encrypt-files-with-gpg-and-openssl-on-gnu-linux/)

* [HTTPS server open certificate authority](https://letsencrypt.org/)

* [NIST Report on Cryptographic Key Length and Cryptoperiod](https://www.keylength.com/)

* [managing encryption keys with Cloud KMS](https://cloud.google.com/kms/docs/quickstart)

* [A curated list of cryptography resources and links](https://github.com/sobolevn/awesome-cryptography)


# Privacy
* [How to encrypt your entire life in less than an hour](https://medium.freecodecamp.org/tor-signal-and-beyond-a-law-abiding-citizens-guide-to-privacy-1a593f2104c3)
* [Are you ready? Here's all the data Facebook and Google have on you](https://www.theguardian.com/commentisfree/2018/mar/28/all-the-data-facebook-google-has-on-you-privacy)
* [The Birth And Death Of Privacy: 3,000 Years of History Told Through 46 Images](https://medium.com/the-ferenstein-wire/the-birth-and-death-of-privacy-3-000-years-of-history-in-50-images-614c26059e)


#  Elliptic Curve Cryptography
* [Understanding Elliptic Curve Cryptography And Embedded Security](https://hackaday.com/2019/07/04/understanding-elliptic-curve-cryptography-and-embedded-security/)


################################################################################
# Internet Security
* [An introduction to cryptography and public key infrastructure](https://opensource.com/article/18/5/cryptography-pki)
* [How internet security works: TLS, SSL, and CA](https://opensource.com/article/19/11/internet-security-tls-ssl-certificate-authority)
* [Getting started with OpenSSL: Cryptography basics](https://opensource.com/article/19/6/cryptography-basics-openssl-part-1)
* [How to use OpenSSL: Hashes, digital signatures, and more](https://opensource.com/article/19/6/cryptography-basics-openssl-part-2)

install cerficates for a website

* [How do I install a root certificate?](https://askubuntu.com/questions/73287/how-do-i-install-a-root-certificate)
* [Getting Chrome to accept self-signed localhost certificate](https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate)
* [How to import CA root certificates on Linux and Windows](https://thomas-leister.de/en/how-to-import-ca-root-certificate/)
* [Be your own certificate authority](https://opensource.com/article/19/4/certificate-authority)
* [Let’s Encrypt is a free, automated, and open Certificate Authority](https://letsencrypt.org/)

```bash
# install certutil and other tools
sudo apt-get install libnss3-tools

# list all your certificates
certutil -d sql:$HOME/.pki/nssdb -L
```

If your using a browser running on the Raspberry Pi,
enter `https://localhost:4443`.
If not, use the host name or IP address (e.g. `https://SynSen:4443`).
The first time you do this your access, will be blocked
and this is because you haven't installed the self-signed certificate,
On Chrome, this blockage can be overridden but its best to [install the certificate][19].

In the following text,
`certificate.pem` is the certificate file originating from the Raspberry Pi / Mozilla Things Gateway.
To install the certificate for use by you Linux operating system,
your fist move the certificate to it from the Raspberry Pi:

```bash
# copy the certificate to your local system
cd ~/Downloads
scp pi@SynSen:/home/pi/src/gateway/ssl/certificate.pem synsen-things-gateway.pem

# copy certificate to its destination
sudo mkdir /usr/local/share/ca-certificates/extra
sudo cp synsen-things-gateway.pem /usr/local/share/ca-certificates/extra/synsen-things-gateway.crt

# update your certifications to make it active
sudo update-ca-certificates
```

After these steps the new certification is known by system utilities like `curl` and `get`.
Unfortunately, this does not affect most web browsers like Mozilla Firefox or Google Chrome.
To [install the certificate so your Chrome browser can use it][20] in the future,
do the following:

```bash
# install certutil and other tools
sudo apt-get install libnss3-tools

# list all your certificates
certutil -d sql:$HOME/.pki/nssdb -L

# add the certificate for chrome
cd ~/Downloads
certutil -d sql:$HOME/.pki/nssdb -A -t "P,," -n 'SynSen Mazilla Things Gateway Certificate' -i synsen-things-gateway.pem

# list all your certificates and make sure its added
certutil -d sql:$HOME/.pki/nssdb -L
```

By the way, you need to delete a certificate do the following:

```bash
# remove certificates used by chrome
certutil -D -d sql:$HOME/.pki/nssdb -n <name of certificate>

# see a list of all your certificates and their names
certutil -d sql$HOME/.pki/nssdb -L
```


[19]:https://thomas-leister.de/en/how-to-import-ca-root-certificate/
[20]:https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate
################################################################################

Consider forking the following utility and making your own tools:

* [File Encryptor/Decryptor](https://github.com/alkass/file-encryptor)
* [Text Encryption/Decryption](http://fadialkass.blogspot.com/2013/09/text-encryptiondecryption.html)



[Riseup][01], a provider of online communication tools for people working on social change,
has some excellent, non-techie documentation on [online security][02] in general
and [encryption tools][03] like gpg.

 openssl is really the solution for encrypting streams (http connects, ssh, etc.)
 and gpg is a solution for block encryption (files, things of fixed length).

# How Public Key Encryption Works
How do you validate the identity of the party they are talking to
and do you communicate securely with them once validated[^A]?
Many schemes that attempt to answer this question require,
at least at some point, the transfer of a password or other identifying credentials,
over an insecure medium.

[^A]
:   Password authentication and file encryption use a [different methodology][05]
    for authentication than you would use to secure a website.

To get around this issue,
GPG relies on a security concept known as public key encryption.
The idea is that you can split the encrypting and decrypting stages
of the transmission into two separate pieces.
That way, you can freely distribute the encrypting portion,
as long as you secure the decrypting portion.
This scheme allows for a one-way message transfer that can be created and encrypted by anyone,
but only be decrypted by the designated user
(the one with the private decrypting key).
If both of the parties create public/private key pairs and give each other their public encrypting keys,
they can both encrypt messages to each other.

# Someone Sends Their Encryption Key
* [Encrypting and decrypting documents](https://www.gnupg.org/gph/en/manual/x110.html)
* [Is it possible to use a gpg public key to encrypt a message without importing the key?](http://serverfault.com/questions/696178/is-it-possible-to-use-a-gpg-public-key-to-encrypt-a-message-without-importing-th)

If someone send you their encription key, with it, you can encript text and return them a secure message.
For example, if you recieve the key below:

```
xxx
```

Place this key in a file, we'll call it here `bobs_key.txt`,
and we have atext file we wish to encript called `bobs_message.txt`,
then we can create the encripted message as follows:

```bash
# xxx
gpg --output credentrials.gpg --encrypt --recipient stuart@gathman.org jeff-irland-connection-credentrials.json

# xxx
gpg -e -u jeff.irland@verizon.net -r stuart@gathman.org jeff-irland-connection-credentrials.json

# xxx
gpg --output jeff-irland-connection-credentrials.gpg --encrypt jeff-irland-connection-credentrials.json
```

# Key Server or Key Ring
In computer security, a key server is a computer that receives and then serves existing cryptographic keys to users or other programs. The users' programs can be working on the same network as the key server or on another networked computer.
keyserver = ~/.gnupg

* [MIT PGP Public Key Server](https://pgp.mit.edu/faq.html)
* [SKS OpenPGP Public Key Server](http://keys.gnupg.net/)


# Generate Your GPG Keys
GPG is often installed by default on Linux, but it is not,
you can install it with: `sudo apt-get install gnupg`.

To begin using GPG to encrypt your communications,
you need to create your public/private key pair.
You can do this by issuing the following command: `gpg --gen-key`

* [Entropy](https://en.wikipedia.org/wiki/Entropy_(computing))

```bash
 $ gpg --gen-key
gpg (GnuPG) 1.4.16; Copyright (C) 2013 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

gpg: directory `/home/jeff/.gnupg' created
gpg: new configuration file `/home/jeff/.gnupg/gpg.conf' created
gpg: WARNING: options in `/home/jeff/.gnupg/gpg.conf' are not yet active during this run
gpg: keyring `/home/jeff/.gnupg/secring.gpg' created
gpg: keyring `/home/jeff/.gnupg/pubring.gpg' created
Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 4096
Requested keysize is 4096 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1w
Key expires at Wed 23 Mar 2016 08:01:20 PM EDT
Is this correct? (y/N) y

You need a user ID to identify your key; the software constructs the user ID
from the Real Name, Comment and Email Address in this form:
    "Heinrich Heine (Der Dichter) <heinrichh@duesseldorf.de>"

Real name: Jeff Irland
Email address: jeff.irland@verizon.net
Comment: for use with Stuart Gathman, Chantilly Mesh Network
You selected this USER-ID:
    "Jeff Irland (for use with Stuart Gathman, Chantilly Mesh Network) <jeff.irland@verizon.net>"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? O
You need a Passphrase to protect your secret key.

We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
...+++++
..+++++
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
..........+++++
.+++++
gpg: /home/jeff/.gnupg/trustdb.gpg: trustdb created
gpg: key 870B9147 marked as ultimately trusted
public and secret key created and signed.

gpg: checking the trustdb
gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: next trustdb check due at 2016-03-24
pub   4096R/870B9147 2016-03-17 [expires: 2016-03-24]
      Key fingerprint = 21E9 C0EA D7EE 5066 2D0F  3D77 746E 6572 870B 9147
uid                  Jeff Irland (for use with Stuart Gathman, Chantilly Mesh Network) <jeff.irland@verizon.net>
sub   4096R/83C63391 2016-03-17 [expires: 2016-03-24]

$
```

Always keep your passphrase secret!
Even if your secret key is accessed by someone else,
they will be unable to use it without your passphrase.
Do not choose a passphrase that someone else might easily guess.

# Sharing Your Public Key
If you want to give or send a file copy of your key to someone,
use this command to write it to an ASCII text file:
`gpg --export --armor jeff.irland@verizon.net > jeff-irland-pubkey.txt`.

The option `--armor` means [ASCII armor][04] and involves encasing encrypted messaging
in ASCII so that they can be sent in a standard messaging format such as email.

```bash
$ gpg --export --armor jeff.irland@verizon.net
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

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
z8hKmaDi6PogV0mImiFabm7NY0cV3A==
=1PkV
-----END PGP PUBLIC KEY BLOCK-----
$
```

# Make Your Public Key Highly Available
https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages-on-an-ubuntu-12-04-vps

# Generating a Revocation Certificate
You need to have a way of invalidating your key pair in case there is a security breach,
or in case you lose your secret key.
This revocation key must be generated ahead of time and kept in a secure,
separate location in case your computer is compromised or inoperable.

```bash
$ gpg --gen-revoke jeff.irland@verizon.net

sec  4096R/870B9147 2016-03-17 Jeff Irland (for use with Stuart Gathman, Chantilly Mesh Network) <jeff.irland@verizon.net>

Create a revocation certificate for this key? (y/N) y
Please select the reason for the revocation:
  0 = No reason specified
  1 = Key has been compromised
  2 = Key is superseded
  3 = Key is no longer used
  Q = Cancel
(Probably you want to select 1 here)
Your decision? 0
Enter an optional description; end it with an empty line:
>
Reason for revocation: No reason specified
(No description given)
Is this okay? (y/N) y

You need a passphrase to unlock the secret key for
user: "Jeff Irland (for use with Stuart Gathman, Chantilly Mesh Network) <jeff.irland@verizon.net>"
4096-bit RSA key, ID 870B9147, created 2016-03-17

ASCII armored output forced.
Revocation certificate created.

Please move it to a medium which you can hide away; if Mallory gets
access to this certificate he can use it to make your key unusable.
It is smart to print this certificate and store it away, just in case
your media become unreadable.  But have some caution:  The print system of
your machine might store the data and make it available to others!
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1
Comment: A revocation certificate should follow

iQIfBCABAgAJBQJW6fZYAh0AAAoJEHRuZXKHC5FHnH4P/A8y+ZA0+LNCCeEp1JKP
OGOHPdNVLLoWniGh/NNSPNgFQPqLeevtePkMqVcuIBbswbKDCElYUjspJ0MYbL1B
LqDiqwzJ9ChpLTDRNbUoHK5+sZ5+yE3jnaduSms6kN4X5U54k0H3Qmnr2IQ2OiLq
njkmKY70s0gnekWWyOI2aBI0kJyDutsEciXlhly/9qSBX0SgSynF6NTuodt+8DHm
hJuoHThBTcN16dCZm6GEqVWiL5IdKOg65oL8X71H91PqiYdqzSVQXtbaxN6MjyG7
bnp9W3e8CA6k9LmVaB1NML3w20TpyOO+nOD9rmalHCcjd58AVS8Iuxvjv7MpdsZw
15KTabT/GXfi0qkh4Ow7iA8DKfJ7pJQIqkaQNOfJ7sPjVquPGeSk5FR1MV6OxT//
XIQVxJ98x50F773WUyl5wQ9mfUmiopOGKEMbhhVK+BZc/Rtw7GhKVV3AKbyLB79l
hF8f9gb9ozQQMtD69OySjezlSPpci8Foo1pDsmMOHAYwqbgjom1gcc3AzzRF5ZUH
u+cW7bv8qH0xB5PJNo5wRG4hd/Tqef8k2iNXyrVQqlEg5tIy+1F7RtfJhxNMxE+W
vZT59HJnNzPT/qkUM5YaRURuts6v/bmPu6hFJ2avMDDx/ORSXqLS7eaD/DbqxjbP
IAnGHMdhpXJ5XpQF1AYeYkT5
=ULzL
-----END PGP PUBLIC KEY BLOCK-----
$
```

If you later issue the revocation certificate,
it notifies others that the public key is not to be used.
Users may still use a revoked public key to verify old signatures,
but not encrypt messages.
As long as you still have access to the private key,
messages received previously may still be decrypted.

# Revoking a Key
When you want to implement your revocation certificate,
you must import it into your local keyserver as follows:

```bash
gpg --import revoke.asc
```

Once you locally revoke the key,
you should send the revoked certificate to a keyserver,
regardless of whether the key was originally issued in this way.
Distribution through a server helps other users to quickly become aware the key has been compromised.

Export to a keyserver with the following command:

```bash
gpg --keyserver subkeys.pgp.net --send KEYNAME
```

For KEYNAME, substitute either the key ID of your primary keypair
or any part of a user ID that identifies your keypair.

# How To Import Other Users' Public Keys
You can import someone's public key in a variety of ways.
If you've obtained a public key from someone in a text file,
GPG can import it with the following command:

```bash
gpg --import name_of_pub_key_file
```

There is also the possibility that the person you are wishing to communicate
with has uploaded their key to a public key server.
These key servers are used to house people's public keys from all over the world.
A popular key server that syncs its information with a variety of other servers
is the MIT public key server.
You can search for people by their name
or email address by going here with your web browser:
`http://pgp.mit.edu/`.

You can also search the key server from within GPG by typing the following:

```bash
#  find your friend’s key on a public keyserver
gpg --search-keys 'myfriend@his.isp.com' --keyserver hkp://subkeys.pgp.net
```

# Verify the Other Person's Identity
How do you know that the person giving you the public key is who they say they are?
You may not know the other party personally, or you may be separated by physical distance. If you never want to communicate over insecure channels, verification of the public key could be problematic.
Instead of verifying the entire public keys of both parties,
you can simply compare the "fingerprint" derived from these keys.
This will give you a reasonable assurance that you both are using the same public key information.

You can get the fingerprint of a public key by typing:
`gpg --fingerprint your_email@address.com`

```bash
$ gpg --fingerprint jeff.irland@verizon.net
pub   4096R/870B9147 2016-03-17 [expires: 2016-03-24]
      Key fingerprint = 21E9 C0EA D7EE 5066 2D0F  3D77 746E 6572 870B 9147
uid                  Jeff Irland (for use with Stuart Gathman, Chantilly Mesh Network) <jeff.irland@verizon.net>
sub   4096R/83C63391 2016-03-17 [expires: 2016-03-24]

$
```

This produces a much more manageable string of numbers to compare with the person themselves,
or someone else who has access to that person.

# Sign Other People's Key
https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages-on-an-ubuntu-12-04-vps

# Encrypt and Decrypt Messages with GPG
## Encryption
You can encrypt messages using the `--encrypt` flag for GPG.
The basic syntax would be:

```bash
gpg --encrypt --sign --armor -r person@email.com name_of_file
```

The parameters basically encrypt the email,
sign it with your private key to guarantee that it is coming from you,
and generates the message in a text format instead of raw bytes.

You should also include a second "-r" recipient with your own email address
if you want to be able to read the message ever.
This is because the message will be encrypted with each person's public key,
and will only be able to be decrypted with the associated private key.

## Decryption
To decrypt a message, you simply receive the complete message
and then call GPG on the message file with no flags: `gpg file_name`.
The software will prompt you as necessary.
Alternatively, you can spesify the output file

You'll recieve a file containing a block of text like this
(note that it incldues the phrase "-----BEGIN PGP MESSAGE-----"):

```
-----BEGIN PGP MESSAGE-----
Version: GnuPG v1

hQIMA9Ko+tyDxjORARAAl9cfnpYDSLRPiKw0KzbVxpMI7L+xaNxHEluypfJZT4WC
O/kcd/QLyGWef4l1TNIFifyJoqSpwNMFE+NYNwum+Bs9kM228b8LsITZIYpTdk42
8iqnigEGN6zYAktthnQxs2LObRkXdT7uTAdR1OYuPUPQ3c+GC6JUjyh7u/x9M0WQ
EbRiFJ5WUtUaH8zC7yxYdbG28KQ05hfUOTZSvzM+rw8hZrJVOFTgOz1lfbVD/Acl
7TT3r6/YPBZuOfopjXtFULQlRzvx5WRZpq7rEbqzOXFVgFe2NWfZYPXI3lKvrrGj
/vZanEZeEOQ6eE+HjQCTntm4qbeBBwaByP8fuQTWjRjvE/AibJ4oDrPZ14wZ2HHz
XDO961dWbjf+7AW9v6PXOB6GpWRVIbv8lk7wrLiALKtOXskkIzvFqv3PjEi3uU+N
lZ0uSPYQYK4ZWOGnB7tamYZ9Fy63kpS+3jerOJc7lcpvFGpnrmwhHEq7kSde509D
J9zi4N778CIwm07wEcxUQ/1xiBkAA4NY3rDheJ1vo97AftifhTT9yMxRfkxEQai7
MMrcf9m2IMmFHlmRUdTWr7TsugM1rmA78et3O0b6k6C2f1aQKbzt4YT+vtwle7/0
qLJZi1vN6NSXs/40nE5jnbuyM1mQpzzYUGKHfkYm8N9xA1JmuFxAszk8uTjrClbS
wEIB1/jT0ywho/mrWAd16TFp3Rg63+w5vOZmzpJuXEVF1kbyIYDsVlccOeUNiPw7
1KXl6OGKudfoYcxrma3QfP9Z+U0mwUBgLQah8ODTRZwnsFR5/hc7Wuq8rDKBKNnE
Wcg2+QaJdySYBtUMYNyO9TYRDzvBF0a9nW1BVsBMs3wYL/dJ7BnRKE3wI6kBTSaB
g3pvwpS/SXFk2PVDWXUDQLT82iOIH3j8JDXLb0eq5TA0wZYLpkBlVHoVKdevvvBM
7jhLlujY5QbQVVMHSvJ0OnbRRpvqRrmNdU161ynYtSNX5s4vyQsTrCGeLMgzkzs6
AaW/0BY7wM3c5ziGrz/YgJtvkbY=
=j/wj
-----END PGP MESSAGE-----
```

```bash
# decripted file sent to stdout
gpg --decrypt foo.txt.gpg

# decripted file sent to foo.txt file
gpg --decrypt foo.txt.gpg --output foo.txt
```

# Detached Signatures
https://www.madboa.com/geek/gpg-quickstart/

# Refreshing Your Keys
https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages-on-an-ubuntu-12-04-vps


# List Your Keys
```bash
# list the keys in your public key ring
gpg --list-keys

# list the keys in your secret key ring
gpg --list-secret-keys
```

# Deleting Your Keys
```bash
# delete a private key from your private key ring
gpg --delete-secret-key "User Name"

# delete a public key from your public key ring
gpg --delete-key "User Name"
```

This removes the public key from your public key ring.
NOTE! If there is a private key on your private key ring associated with a public key,
you will get an error!
You must delete your private key for this key pair from your private key ring first.




# Recoverable Secrets
Just about the worst thing you can do is use the same password across several services,
meaning that an attack on one gives entry to multiple accounts.
The challenge is to generate a unique and secure password for each and every application.

HaseDice is not a password manager, or an app, but a simple method that can be readily applied.
A simple dice is used to create random numbers,
which are used to select words from a list to form the basic secret phrase.
This is then combined with the name of the service or application to be accessed,
the date, and a salt, before hashing using the SHA256 algorithm.
The final hash is then truncated to create the password.
You can do it all on a device that’s airgapped from the world,
ensuring your core secret is never exposed, thus maintaining security.

* [HashDice - strong passwords that are easy to recover](https://stebanoid.blogspot.com/2019/03/hashdice.html)

# Secure Shell (SSH)
Secure Shell (SSH) is a cryptographic network protocol for operating network services
securely over an unsecured network.
Typical applications include remote command-line, login, and remote command execution,
but any network service can be secured with SSH.

## Eliminate SSH Keys and use a GPG Keys Instead
* [How to enable SSH access using a GPG key for authentication](https://opensource.com/article/19/4/gpg-subkeys-ssh)
* [How to manage multiple SSH key pairs](https://www.redhat.com/sysadmin/manage-multiple-ssh-key-pairs)
* [How to SSH Properly](https://gravitational.com/blog/how-to-ssh-properly)

## Share Terminal Access (tty-share)
[tty-share][06] enables you to do terminal sharing over the Internet.
Its an extremely simple means for a remote person to join a shared session you establish.

## Temporary Allow SSH Logins (ssh-allow-friend)
https://hackaday.com/2017/02/05/grant-anyone-temporary-permissions-to-your-computer-with-ssh/

## Rendezvous Server
A rendezvous protocol is a computer network protocol that enables resources or P2P network peers to find each other.

* [Rendezvous Server Protocol](https://magic-wormhole.readthedocs.io/en/latest/server-protocol.html)

## Securely Send Files
[Magic Wormhole][07] is a simple and free utility that help users to send a files from one computer to another computer anywhere in the world.

* [Magic Wormhole – A Simple And Secure Way To Send Files From Linux Command Line](https://www.2daygeek.com/wormhole-securely-share-files-from-linux-command-line/)
* [Brian Warner - Magic Wormhole- Simple Secure File Transfer](https://www.youtube.com/watch?v=oFrTqQw0_3c&feature=youtu.be)

# Git-Secret
What if your application needs WiFi credentials to operate,
so how do I store them out on GitHub without exposing my home WiFi to Internet riffraff?
The tool [`git-secret`][08] (GitHub repository [here][09]) helps solve this problem.
`git-secret` is a shell utility to store your private data inside a `git` repository.
It encrypts using `gpg` and the public keys of all the users that you trust.
So everyone of them can decrypt these files using only their personal secret key.
There are no passwords that change.
When someone leaves your circle of trust, just delete their public key,
re-encrypt the files, and they won’t be able to decrypt secrets anymore.






[01]:https://help.riseup.net/en
[02]:https://help.riseup.net/en/security/human-security
[03]:https://help.riseup.net/en/security/message-security/openpgp/best-practices
[04]:https://www.techopedia.com/definition/23150/ascii-armor
[05]:https://letsencrypt.org/
[06]:https://tty-share.com/
[07]:https://github.com/warner/magic-wormhole
[08]:https://git-secret.io/
[09]:https://github.com/sobolevn/git-secret
[10]:
