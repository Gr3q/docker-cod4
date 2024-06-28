#!/bin/bash

# build the start command

command="/home/cod4/cod4_lnxded"
command+=" +set dedicated ${SERVERTYPE:-1}"
command+=" +set net_port ${PORT:-28960}"
command+=" +set net_ip ${IP:-0.0.0.0}"
command+=" +set sv_authorizemode 0"
if [ -n "$FS_GAME" ]; then
    command+=" +set fs_game $FS_GAME"
fi

command+=" +set sv_maxclients ${MAXCLIENTS:-32}"
command+=" +set rcon_password ${RCONPASSWORD:-changeme}"
command+=" +set sv_punkbuster ${PUBNKBUSTER:-1}"
command+=" +set g_password ${PASSWORD:-changeme}"
command+=" +exec ${CONFIG_FILE:-server.cfg}"
command+=" +map_rotate"

# run the command
eval "$command"