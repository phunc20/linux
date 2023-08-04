## OpenSMTPD
Normally, one'd simply
```shell
sudo pacman -S opensmtpd
sudo systemctl start smtpd.service
```

But sometimes one needs to debug, e.g.
when you `echo test | sendmail phunc20`
and see no file named `phunc20` in
`/var/spool/mail/`.

> A successfully sent such mail should
> look like:
> ```shell
> From phunc20@beetroot Fri Aug  4 18:19:02 2023
> Return-Path: <phunc20@beetroot>
> Delivered-To: phunc20@beetroot
> Received: from localhost (beetroot [local])
>     by beetroot (OpenSMTPD) with ESMTPA id 4b159f47
>     for <phunc20@beetroot>;
>     Fri, 4 Aug 2023 11:19:02 +0000 (UTC)
> From:  <phunc20@beetroot>
> Date: Fri, 4 Aug 2023 18:19:02 +0700 (+07)
> Message-ID: <433ab127c6365109@beetroot>
> 
> test
> ```

```shell
# First stop the service
sudo systemctl stop smtpd.service
# Launch smtpd with log into stdout `-dv`
sudo smtpd -dv
```
