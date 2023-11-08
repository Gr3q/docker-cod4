#!/bin/bash
/home/cod4/cod4_lnxded \
+set dedicated "${SERVERTYPE:-1}"\
+set net_port "${PORT:-28960}"\
+set net_ip "${IP:-0.0.0.0}"\
+set sv_authorizemode "${AUTHORIZEMODE:--1}\
+set sv_maxclients "${MAXCLIENTS:-32}"\
+set rcon_password "${RCONPASSWORD:-changeme}"\
+set sv_punkbuster "${PUBNKBUSTER:-1}"\
+set g_password "${PASSWORD:-changeme}"\
+exec "${CONFIG_FILE:-server.cfg}\
+map_rotate