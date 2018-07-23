#!/bin/sh

echo "Starting FHEM presenced ..."
[ ! -s /data/presenced.conf ] && cp /presenced.conf /data/presenced.conf
rm -f /var/run/presenced.pid
/presenced
