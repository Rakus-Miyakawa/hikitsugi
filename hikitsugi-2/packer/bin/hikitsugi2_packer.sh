#!/bin/bash -xe

packer validate /var/lib/jenkins/workspace/Running_Packer/hikitsugi-2/packer/template/hikitsugi2_packer.json

STATUS=`echo $?`

if [ ${STATUS} = 0 ];then

    packer build /var/lib/jenkins/workspace/Running_Packer/hikitsugi-2/packer/template/hikitsugi2_packer.json

else

    exit 1

fi
