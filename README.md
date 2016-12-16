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

Create, mount, umount device for:

    GNU/Linux (LUKS)
    NetBSD (CGD)
    FreeBSD (GELI)
    OpenBSD (SVND)
    DragonflyBSD (LUKS)
    Mac OS X (FileVault2)
    QNX (FSCrypto)

By default environment variables:

    CRYPT_DEV_ACTION=mount
    CRYPT_DEV=sdb2
    CRYPT_DEV_FS=ext4
    CRYPT_DEV_LEVEL=1
    CRYPT_DEV_FS_NAME=crypt-dev

Capabilities:

    ---------------------------------------------------
    |    Operation   |          File system           |
    |     system     |:------------------------------:|
    |                |  fat32   |   vfat   |   ext4   |
    |:--------------:|:--------:|:--------:|:--------:|
    |                |  create  |  create  |  create  |
    |   GNU/Linux    |  mount   |  mount   |  mount   |
    |                |  umount  |  umount  |  umount  |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |
    |     NetBSD     |  mount   |  umount  |  umount  |
    |                |  umount  |          |          |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |
    |     FreeBSD    |  mount   |  umount  |  umount  |
    |                |  umount  |          |          |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |
    |     OpenBSD    |  mount   |  umount  |  umount  |
    |                |  umount  |          |          |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |
    |  DragonflyBSD  |  mount   |  umount  |  umount  |
    |                |  umount  |          |          |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |
    |    Mac OS X    |  mount   |  umount  |  umount  |
    |                |  umount  |          |          |
    |----------------|----------|----------|----------|
    |                |  create  |  mount   |          |
    |      QNX       |  mount   |  umount  |    x     |
    |                |  umount  |          |          |
    ---------------------------------------------------

Execute (Shell script):

    crypt-dev [action] [device] [file system] [level] [file system name]

License:

    MIT
