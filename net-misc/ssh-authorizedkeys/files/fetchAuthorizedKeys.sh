#!/bin/sh

set -e

CMDLINE=$(cat /proc/cmdline)

for arg in ${CMDLINE}; do
  case "${arg}" in
    authkey=*)
      AUTHKEY="${arg#authkey=}"
      ;;
  esac
done

if [ -n "${AUTHKEY}" ]; then
  install -m 0700 -d /root/.ssh
  wget -O /root/.ssh/authorized_keys "${AUTHKEY}"
  chmod 0600 /root/.ssh/authorized_keys
fi
