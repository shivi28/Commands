***Unable to ssh on aws instance***
```
$ ssh -i abc shivanis@stg-crd-risk02.sg.aws.grabpay.com
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    @       WARNING: POSSIBLE DNS SPOOFING DETECTED!          @
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    The ECDSA host key for stg-crd-risk02.sg.aws.grabpay.com has changed,
    and the key for the corresponding IP address 10.66.48.23
    is unknown. This could either mean that
    DNS SPOOFING is happening or the IP address for the host
    and its host key have changed at the same time.
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
    Someone could be eavesdropping on you right now (man-in-the-middle attack)!
    It is also possible that a host key has just been changed.
    The fingerprint for the ECDSA key sent by the remote host is
    SHA256:z7oXGQOskG19Wj5UsPldUhwLLumNdBe/ObzGwK3ZN9M.
    Please contact your system administrator.
    Add correct host key in /Users/shivani.singhal/.ssh/known_hosts to get rid of this message.
    Offending ECDSA key in /Users/shivani.singhal/.ssh/known_hosts:24
    ECDSA host key for stg-crd-risk02.sg.aws.grabpay.com has changed and you have requested strict checking.
    Host key verification failed.
```

Solution:
```
delete entry for that particular hostname from known_hosts
```

***In case of bad permission for particular key to ssh on AWS instance***

```
☁  .ssh  ssh -i abc shivanis@stg-crd-risk02.sg.aws.grabpay.com
The authenticity of host 'stg-crd-risk02.sg.aws.grabpay.com (10.66.48.23)' can't be established.
ECDSA key fingerprint is SHA256:z7oXGQOskG19Wj5UsPldUhwLLumNdBe/ObzGwK3ZN9M.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'stg-crd-risk02.sg.aws.grabpay.com,10.66.48.23' (ECDSA) to the list of known hosts.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for 'abc' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "abc": bad permissions
Password:
Password:

```
Solution:
```
chmod 600 abc
```
