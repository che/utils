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

Create, mount, unmount device for:

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
    CRYPT_DEV_KEY_FILE= (for pipe CRYPT_DEV_KEY_FILE=-)
    CRYPT_DEV_LABEL=crypt-dev
    CRYPT_DEV_LEVEL=1

Capabilities:

    ------------------------------------------------------------------
    |   Operation    |                  File system                  |
    |     system     |:---------------------------------------------:|
    |                |   fat32   |   vfat    |   ntfs    |    ext4   |
    |:--------------:|:---------:|:---------:|:---------:|:---------:|
    |                |  create   |  create   |  create   |  create   |
    |   GNU/Linux    |   mount   |   mount   |   mount   |   mount   |
    |                |  unmount  |  unmount  |  unmount  |  unmount  |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |   mount   |
    |     NetBSD     |   mount   |  unmount  |  unmount  |  unmount  |
    |                |  unmount  |           |           |           |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |   mount   |
    |     FreeBSD    |   mount   |  unmount  |  unmount  |  unmount  |
    |                |  unmount  |           |           |           |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |   mount   |
    |     OpenBSD    |   mount   |  unmount  |  unmount  |  unmount  |
    |                |  unmount  |           |           |           |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |   mount   |
    |  DragonflyBSD  |   mount   |  unmount  |  unmount  |  unmount  |
    |                |  unmount  |           |           |           |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |   mount   |
    |    Mac OS X    |   mount   |  unmount  |  unmount  |  unmount  |
    |                |  unmount  |           |           |           |
    |----------------|-----------|-----------|-----------|-----------|
    |                |  create   |   mount   |   mount   |           |
    |      QNX       |   mount   |  unmount  |  unmount  |     x     |
    |                |  unmount  |           |           |           |
    ------------------------------------------------------------------

Execute (Shell script):

    crypt-dev [action] [device] [file_system] [key_file] [device_label] [level]

License:

    BSD
