#!/bin/bash
#Settings
VM_UUID=
VDI_UUID=
VDI_NEW_NAME=
SR_DESTINY_UUID=
#-----------------------
#shutdown the VM
xe vm-shutdown uuid="$VM_UUID"
#Copy the VDI and set a name for the copy
VDI_NEW_UUID=`xe vdi-copy uuid="$VDI_UUID" sr-uuid="$SR_DESTINY_UUID"`
xe vdi-param-set uuid="$VDI_NEW_UUID" name-label="$VDI_NEW_NAME"
#restart the VM
xe vm-start uuid="$VM_UUID"
