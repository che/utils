
##  GNU/Linux (LUKS)

linux_cryptsetup_check()
{
    cryptsetup --version > /dev/null
    CRYPT_DEV_EXIT_STATUS="$?"
    if [ ! $CRYPT_DEV_EXIT_STATUS -eq 0 ]
    then
        echo "ERROR: Please, install 'cryptsetup'"

        exit 1
    fi
}

linux_luks_close_in()
{
    if [ -e "$CRYPT_DEV_MAPPER_IN" ]
    then
        cryptsetup luksClose "$CRYPT_DEV_MAPPER_IN"
        CRYPT_DEV_EXIT_STATUS="$?"
        if [ $CRYPT_DEV_EXIT_STATUS -eq 0 ]
        then
            echo "'${CRYPT_DEV_MAPPER_IN}' has been closed"
            rm -rf "$CRYPT_DEV_MOUNT_DIR"
        else
            echo "ERROR: '${CRYPT_DEV_MAPPER_IN}' has been not closed"
        fi

        if [ "$CRYPT_DEV_ACTION" = "$CRYPT_DEV_ACTION_DEFAULT" ]
        then
            exit $CRYPT_DEV_EXIT_STATUS
        fi
    else
        echo "WARNING: '${CRYPT_DEV_MAPPER_IN}' does not exists"
    fi
}

linux_luks_close()
{
    if [ -e "$CRYPT_DEV_MAPPER" ]
    then
        cryptsetup luksClose "$CRYPT_DEV_MAPPER"
        CRYPT_DEV_EXIT_STATUS="$?"
        if [ $CRYPT_DEV_EXIT_STATUS -eq 0 ]
        then
            echo "'${CRYPT_DEV_MAPPER}' has been closed"

            rm -rf "$CRYPT_DEV_MOUNT_DIR"
        else
            echo "ERROR: '${CRYPT_DEV_MAPPER}' has been not closed"
        fi

        exit $CRYPT_DEV_EXIT_STATUS
    else
        echo "WARNING: '${CRYPT_DEV_MAPPER}' does not exists"

        exit 0
    fi
}
