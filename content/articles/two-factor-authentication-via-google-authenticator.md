Title: Two-Factor Authentication via Google Authenticator
Date: 2015-11-28 10:16
Category: Software
Tags: Security, Two-Factor Authentication, Google Authenticator
Slug: two-factor-authentication-via-google-authenticator
Author: Jeff Irland
Image: google-authenticator.png
Summary: I want to set up a secure connection to my home computer while on the road.  The obvious thing to do is open the SSH port on my router, forward it to my SSH port on my computer, and it should be good to go.  Yes, but I'm paranoid, so I'm using Two-Factor Authentication.

# Two-Factor Authentication
<div style="float: left">
    <a href="http://security.stackexchange.com/questions/41939/two-step-vs-two-factor-authentication-is-there-a-difference">
        <img class="img-rounded" style="margin: 0px 8px; width: 247px; height: 111px" title="Strictly speaking, Google Authenticator is a Two STEP Authentication methodology. Never the less, it is close too it.  This implementation pragmatically require the phone, the 2nd factor." alt="2FA-Picture" src="{filename}/images/two-factor-authentication.png" />
    </a>
</div>
I want additional security for my SSH login exposed to the Internet,
specifically [Two-Factor Authentication (2FA)][02].
[Increasingly, websites are being built to support 2FA natively][01]
and you can [take advantage of 2FA at these sites][03],
but it [typically requires you to enable 2FA][04] for those sites only.
I want to [implement 2FA on my Ubuntu SSH connections][06]
use an offering called [Google Authenticator][07].
This Google [web service is open sources][05] and can be used with a companion smart phone app.

Google Authenticator implements [Time-based One-time Password Algorithm (TOTP)][10]
security tokens from [RFC6238][11] in mobile apps made by Google.
The Authenticator provides a six digit one-time password users must provide
in addition to their username and password to log into Google services or other sites.
Google Authenticator doesn’t call Google — all the work happens on your SSH server and your phone.

### Step 1
To access my home PC from out side my home via SSH,
I need to configure port forwarding on your router (external interface)
to my home PC's SSH server.
I can either use the standard port (22) or any alternative port (something above 1024).
(**NOTE:** For the webserver you will need to set the port forwarding from port 80
on the external interface to your server and maybe port 443 if you want to include SSL/TLS connections.)
I did this via the router's configuration page.
Many modern routers have presets for configuring several applications, including SSH.
If you need to forward the port manually, though,
set it so that any incoming connections through port 22
will be routed to the local IP of your home computer.

Also, on some routers,
you'll need to configure you home PC with a static IP address,
otherwise DHCP could move your assigned IP address around,
effectively disabling the forwarding.

### Step 2
Download the Google Authenticator app for your Apple or Android device.
In my case, I used the [Android App][09].

### Step 3
Next you need to install the Google Authenticator[PAM module][08].
To install the package on Ubuntu, run the following command:

```bash
sudo apt-get install libpam-google-authenticator
```
Now log in as the user you’ll be logging in with remotely
and run the comand `google-authenticator` to create a secret key.

Allow the command to update your Google Authenticator file by typing `y`.
You’ll then be prompted with several questions that will allow you to
restrict uses of the same temporary security token,
increase the time window that tokens can be used for,
and limit allowed acces attempts to hinder brute-force cracking attempts.

Finally, Google Authenticator will present you with a secret key
and several “emergency scratch codes.”
Write down the emergency scratch codes somewhere safe,
they can only be used one time each,
and they’re intended for use if you lose your phone.

### Step 4
Enter the secret key in the Google Authenticator app on your phone,
or you can also use the scan barcode feature (i.e. scan a QR code with your phone’s camera).

Now you’ll now have a constantly changing verification code on your phone.
(**NOTE:** If you want to log in remotely as multiple users,
run this command for each user.
Each user will have their own secret key and their own codes.)

### Step 5
Next you need to activate Google Authenticator on the home PC
and require Google Authenticator for SSH logins.
You's do this by making modification to the [Pluggable Authentication Modules (PAM)][12]
for Linux.
To do so, open the `/etc/pam.d/sshd` file on your system
and add the following line to the file:

```bash
auth required pam_google_authenticator.so
```
Next, open the `/etc/ssh/sshd_config` file,
locate the `ChallengeResponseAuthentication` line,
and change it to read as follows:

```bash
ChallengeResponseAuthentication yes
```

(**NOTE:** If the `ChallengeResponseAuthentication` line doesn’t already exist,
add the above line to the file.)

Finally, restart the SSH server, so your changes will take effect, via ths command:

```bash
sudo service ssh restart
```

### Step 6
At this point, when using SSH from my local network,
I would need to provide the verification code.
I don’t want to enter the verification code on my local network,
because I trust my local network.
When I SSH from remote, a verification code is required.
One way to avoid this is to always login with certificates.

Luckily, there is another way to arrange this using the `pam_access.so` module
This modification will allow skipping two-factor authentication
when the connection originates from certain sources.
This is natively already supported by PAM.
The `pam_access.so` module can be used to check the source against local subnets:

make sure you have the following in `/etc/pam.d/sshd`:

```bash
# use Google Authenticator
# The ‘nullok’ option tells PAM whenever no config for 2-factor authentication is found,
# it should just ignore it. This will prevent you from being locked out.
auth [success=1 default=ignore] pam_access.so accessfile=/etc/security/access-local.conf
auth required pam_google_authenticator.so nullok
```

Add create the file `/etc/security/access-local.conf` with the following contents:

```bash
# skip one-time password if logging in from the local network
# only allow from local IP range
+ : ALL : 192.168.1.0/24
+ : ALL : LOCAL
- : ALL : ALL
```

### Step 7
Test it out.
You’ll be prompted for both your password and
Google Authenticator code whenever you attempt to log in via SSH externally.
On the other hand, when using SSH on your local network,
you should not be required to enter the Google Authenticator code.

# Sources
Key articles that I found helpful:

* [Set Up Google Authenticator](http://kb.mailchimp.com/integrations/other-integrations/set-up-google-authenticator)
* [How To Protect SSH With Two-Factor Authentication](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-two-factor-authentication)
* [Securing SSH with two factor authentication using Google Authenticator](https://www.linux.com/community/blogs/133-general-linux/783135-securing-ssh-with-two-factor-authentication-using-google-authenticator)
* [Configuring two-factor authentication in Ubuntu 14.04 using Google Authenticator](http://wiki.vps.net/vps-net-features/cloud-servers/configuring-two-factor-authentication-in-ubuntu-14-04-using-google-authenticator/)
* [Playing with two-factor authentication in Linux using Google Authenticator][13]
* [Two Factor SSH Authentication on external address only][14]
* [Two Step Authentication for SSH on Centos 6 Using Google Authenticator](http://blog.nowherelan.com/2014/01/04/two-step-authentication-for-ssh-on-centos-6-using-google-authenticator/)



[01]:https://twofactorauth.org/
[02]:http://www.cnet.com/news/two-factor-authentication-what-you-need-to-know-faq/
[03]:http://lifehacker.com/5938565/heres-everywhere-you-should-enable-two-factor-authentication-right-now?disableinsets=on&utm_expid=66866090-49.VYy4WCNHSyuP6EmjnM93MQ.2&utm_referrer=https%3A%2F%2Fwww.google.com%2F
[04]:http://www.cnet.com/how-to/how-to-enable-two-factor-authentication-on-popular-sites/
[05]:https://github.com/google/google-authenticator
[06]:http://www.howtogeek.com/121650/how-to-secure-ssh-with-google-authenticators-two-factor-authentication/
[07]:http://www.google.com/landing/2step/
[08]:http://tldp.org/HOWTO/User-Authentication-HOWTO/x115.html
[09]:https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2
[10]:https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm
[11]:https://tools.ietf.org/html/rfc6238
[12]:http://tldp.org/HOWTO/User-Authentication-HOWTO/x115.html
[13]:http://blog.remibergsma.com/2013/06/08/playing-with-two-facor-authentication-in-linux-using-google-authenticator/
[14]:http://serverfault.com/questions/518802/two-factor-ssh-authentication-on-external-address-only
