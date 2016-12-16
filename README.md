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
    CRYPT_DEV_LABEL=crypt-dev
    CRYPT_DEV_KEY_FILE=""

Capabilities:

    --------------------------------------------------------------
    |    Operation   |                File system                |
    |     system     |:-----------------------------------------:|
    |                |  fat32   |   vfat   |   ntfs   |   ext4   |
    |:--------------:|:--------:|:--------:|:--------:|:--------:|
    |                |  create  |  create  |  create  |  create  |
    |   GNU/Linux    |  mount   |  mount   |  mount   |  mount   |
    |                |  umount  |  umount  |  umount  |  umount  |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |  mount   |
    |     NetBSD     |  mount   |  umount  |  umount  |  umount  |
    |                |  umount  |          |          |          |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |  mount   |
    |     FreeBSD    |  mount   |  umount  |  umount  |  umount  |
    |                |  umount  |          |          |          |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |  mount   |
    |     OpenBSD    |  mount   |  umount  |  umount  |  umount  |
    |                |  umount  |          |          |          |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |  mount   |
    |  DragonflyBSD  |  mount   |  umount  |  umount  |  umount  |
    |                |  umount  |          |          |          |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |  mount   |
    |    Mac OS X    |  mount   |  umount  |  umount  |  umount  |
    |                |  umount  |          |          |          |
    |----------------|----------|----------|----------|----------|
    |                |  create  |  mount   |  mount   |          |
    |      QNX       |  mount   |  umount  |  umount  |    x     |
    |                |  umount  |          |          |          |
    --------------------------------------------------------------

Execute (Shell script):

    crypt-dev [action] [device] [file_system] [level] [device_label] [key_file]

License:

    BSD
