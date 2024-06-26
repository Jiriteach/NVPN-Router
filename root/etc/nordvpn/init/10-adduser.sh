#!/command/with-contenv bash

[[ "${DEBUG,,}" == trace* ]] && set -x

PUID=${PUID:-912}
PGID=${PGID:-912}

echo "Set nordvpn user uid "$PUID" and nordvpn group gid "$PGID""

groupmod --non-unique --gid "$PGID" nordvpn
usermod --non-unique --uid "$PUID" nordvpn

exit 0
