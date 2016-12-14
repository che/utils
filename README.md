# utils

random-gen-user_pswd
------------

Random generate user name and password [bash script]:

    36 unique characters for username
    91 unique characters for password

By default:

    RANDOM_GEN_USERNAME_LENGTH=32
    RANDOM_GEN_PASSWORD_LENGTH=511

License:

    MIT


crypt-dev
------------

Mount/umount device for GNU/Linux(LUKS), NetBSD(CGD), FreeBSD(GELI), OpenBSD(SVND) [shell script].

By default:

    CRYPT_DEV_ACTION=mount
    CRYPT_DEV=sdb2

Execute:

    crypt-dev [action] [device]

License:

    MIT
