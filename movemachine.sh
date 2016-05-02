#!/bin/bash
#Settings
VM_ORIGINAL_UUID=
VM_DESTINY_NAME=""
SR_DESTINY_UUID=
#-----------------------
#shutdown the VM
xe vm-shutdown uuid=$VM_ORIGINAL_UUID
#Copy the VM to the new SR and give it a name
VM_NEW_UUID=`xe vm-copy uuid="$VM_ORIGINAL_UUID" new-name-label="$VM_DESTINY_NAME" sr-uuid="$SR_DESTINY_UUID"`
#Boot the new VM
xe vm-start uuid=$VM_NEW_UUID