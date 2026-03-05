#!/bin/bash

mkdir -p /media/gdrive

rclone mount gdrive: /media/gdrive \
--config /config/rclone/rclone.conf \
--allow-other \
--buffer-size 256M \
--dir-cache-time 72h \
--vfs-cache-mode full &

/jellyfin/jellyfin