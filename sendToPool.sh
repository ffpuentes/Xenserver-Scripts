#!/bin/bash
#Settings
VM_ORIGINAL_UUID=
REMOTE_MASTER=
REMOTE_USER=
REMOTE_PASSWORD=
HOST_DESTINY_UUID=
SR_DESTINY_UUID=
#-----------------------
xe vm-migrate uuid=${VM_ORIGINAL_UUID} remote-master=${REMOTE_MASTER} \
remote-username=${REMOTE_USER} remote-password=${REMOTE_PASSWORD} \
host-uuid=${HOST_DESTINY_UUID} \
destination-sr-uuid=${SR_DESTINY_UUID}