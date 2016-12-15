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


crypt-dev [shell script]
------------

Create, mount, umount device for:

    GNU/Linux (LUKS)
    NetBSD (CGD)
    FreeBSD (GELI)
    OpenBSD (SVND)
    Mac OS X (FileVault2)
    QNX (FSCrypto)

By default environment variables:

    CRYPT_DEV_ACTION=mount
    CRYPT_DEV=sdb2
    CRYPT_DEV_FS=ext4

Capabilities:

    ---------------------------------------
    |  Operation  |      File system      |
    -   system    |------------------------
    |             |   ext4   |  fat (32)  |
    -:-----------:-:--------:-:----------:-
    |             |  create  |   create   |
    |  GNU/Linux  |  mount   |   mount    |
    |             |  umount  |   umount   |
    ---------------------------------------
    |             |  mount   |   create   |
    |   NetBSD    |  umount  |   mount    |
    |             |          |   umount   |
    ---------------------------------------
    |             |  mount   |   create   |
    |   FreeBSD   |  umount  |   mount    |
    |             |   (RO)   |   umount   |
    ---------------------------------------
    |             |  mount   |   create   |
    |   OpenBSD   |  umount  |   mount    |
    |             |          |   umount   |
    ---------------------------------------
    |             |  mount   |   create   |
    |  Mac OS X   |  umount  |   mount    |
    |             |          |   umount   |
    ---------------------------------------
    |             |          |   create   |
    |     QNX     |     x    |   mount    |
    |             |          |   umount   |
    ---------------------------------------

Execute:

    crypt-dev [action] [device] [filesystem]

License:

    MIT
