#!/bin/bash

packer validate ${WORKSPACE}/hikitsugi-2/packer/template/hikitsugi2_packer.json

status=`echo $?`

if [ ${status} = 0 ]; then

    packer build ${WORKSPACE}/hikitsugi-2/packer/template/hikitsugi2_packer.json

fi
