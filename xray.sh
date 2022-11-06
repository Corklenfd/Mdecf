#!/bin/sh
if [ ! -f UUID ]; then
  UUID="602e4039-b5d0-4fcc-b045-77aaf56d30bb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

