#!/bin/sh

export TOKEN=NTk2OTM4MTE4NDAyMTQ2MzE0.XSE1dA.y83sL8d2XgrhyZsY2Gype6ZPWqk
export MOD_ROLE_ID=553976359014367247
export CAN_BAN_ROLE_ID=553976359014367247
export CAN_KICK_ROLE_ID=553976359014367247
export WARNING_ROLE_ID=553976359014367247
export MUTE_ROLE_ID=553976359014367247
export LOG_CHANNEL_ID=596944144619012097
export SERVER_ID=550299596367200267
export OWNER_ID=509584812970082304
export RESTART_COMMAND="sh run_local.sh"

LATEST_BUILD="$(find ./build/libs | sort --version-sort --field-separator=- --key=2,2 | tail -n 1)"

until java -jar "${LATEST_BUILD}"; do
    echo "BanUtil crashed with exit code $?.  Respawning.." >&2
    sleep 1
done

