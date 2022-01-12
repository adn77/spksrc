# Setup environment
PATH="${SYNOPKG_PKGDEST}/target/bin:${PATH}"

service_postinst ()
{
#    mkdir -p "${SHARE_PATH}"
#    chown ${PRIV_PREFIX}${USER}: "${SHARE_PATH}"
#    chmod 770 "${SHARE_PATH}"
#    echo "${SHARE_PATH}" > /etc/urbackup/backupfolder
    /bin/true
}

service_prestart ()
{
    CONFIG_DIR="${SYNOPKG_PKGDEST}/var"

    # Required: start-stop-daemon do not set environment variables
    HOME=${SYNOPKG_PKGDEST}/var
    export HOME
}
