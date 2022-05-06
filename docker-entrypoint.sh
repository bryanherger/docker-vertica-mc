#!/bin/bash

# install and start MC
if [ -d /opt/vconsole ]
then
    /opt/vconsole/bin/mctl start
else
    yum localinstall -q -y /tmp/vertica-console-11.1.0-0.x86_64.RHEL6.rpm
fi
tail -f /opt/vconsole/log/mc/mconsole.log

