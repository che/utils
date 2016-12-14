
##  GNU/Linux (LUKS)

linux_luks_mapper_umount()
{
    local crypt_dev_mapper_pids=""

    for i in $(lsof -Fp "$CRYPT_DEV_MOUNT_DIR" 2>/dev/null)
    do
        crypt_dev_mapper_pids="$crypt_dev_mapper_pids ${i/p/}"
    done

    if [ -z "$crypt_dev_mapper_pids" ]
    then
        umount -l "$CRYPT_DEV_MOUNT_DIR"

        echo "WARNING: '${CRYPT_DEV_MOUNT_DIR}' has been unmounted lazily"
    else
        echo "WARNING: Killing proccesses${crypt_dev_mapper_pids} for '$CRYPT_DEV_MOUNT_DIR'"

        kill -9 $crypt_dev_mapper_pids
        linux_luks_umount
    fi
}

linux_luks_umount()
{
    if [ -e "$CRYPT_DEV_MOUNT_DIR" ]
    then
        umount "$CRYPT_DEV_MOUNT_DIR"
        CURRENT_EXIT_STATUS="$?"
        if [ $CURRENT_EXIT_STATUS -eq 0 ]
        then
            echo "'${CRYPT_DEV_MOUNT_DIR}' has been unmounted"

            rm -rf "$CRYPT_DEV_MOUNT_DIR"
        else
            echo "ERROR: '${CRYPT_DEV_MOUNT_DIR}' has been not unmounted correctly"

            linux_luks_mapper_umount
        fi
    else
        echo "WARNING: '${CRYPT_DEV_MOUNT_DIR}' does not exists"
    fi
}

linux_umount()
{
    linux_cryptsetup_check
    linux_luks_umount
    linux_luks_close_in
    linux_luks_close
}
