
##  GNU/Linux (LUKS)

linux_luks_open()
{
    cryptsetup luksOpen "$CRYPT_DEV_SYSTEM" "$CRYPT_DEV_NAME"
    CRYPT_DEV_EXIT_STATUS="$?"
    if [ $CRYPT_DEV_EXIT_STATUS -eq 0 ]
    then
        echo "'${CRYPT_DEV_NAME}' has been opened"
    else
        crypt_dev_error "'${CRYPT_DEV_NAME}' has been not opened"
    fi
}

linux_luks_open_in()
{
    cryptsetup luksOpen "$CRYPT_DEV_MAPPER" "$CRYPT_DEV_NAME_IN"
    CRYPT_DEV_EXIT_STATUS="$?"
    if [ $CRYPT_DEV_EXIT_STATUS -eq 0 ]
    then
        echo "'${CRYPT_DEV_NAME_IN}' has been opened"
    else
        crypt_dev_error "'${CRYPT_DEV_NAME_IN}' has been not opened"
    fi
}

linux_mapper_mount()
{
    mkdir -p "$CRYPT_DEV_MOUNT_DIR" && mount "$CRYPT_DEV_MAPPER_IN" "$CRYPT_DEV_MOUNT_DIR"
    CRYPT_DEV_EXIT_STATUS="$?"
    if [ $CRYPT_DEV_EXIT_STATUS -eq 0 ]
    then
        echo "'${CRYPT_DEV_SYSTEM}' has been mounted to '${CRYPT_DEV_MOUNT_DIR}'"
    else
        echo "ERROR: Something wrong"

        linux_luks_close_in
        linux_luks_close
    fi

    exit $CRYPT_DEV_EXIT_STATUS
}

linux_luks_mount()
{
    if [ -e "$CRYPT_DEV_SYSTEM" ]
    then
        if [ ! -e "$CRYPT_DEV_MOUNT_DIR" ]
        then
            linux_luks_open && linux_luks_open_in
            linux_mapper_mount
        else
            crypt_dev_error "'${CRYPT_DEV_MOUNT_DIR}' already exists"
        fi
    else
        crypt_dev_error "'${CRYPT_DEV_SYSTEM}' does not exist"
    fi
}

linux_mount()
{
    linux_cryptsetup_check
    linux_luks_mount
}
