#!/usr/bin/env bash 

source .env

docker run -d \
  -p 445:445 \
  -v /media/pi/FAST:/share/data \
  --name samba trnape/rpi-samba \
  -u "${USER_NAME}:${USER_PASS}" \
  -s "${FOLDER_NAME}:/share/data:rw:${USER_NAME}"