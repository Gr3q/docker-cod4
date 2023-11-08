# CoD4 Server

The server binary originates from
http://www.opferlamm-clan.de/wbb2/thread.php?threadid=16895&threadview=0&hilight=&hilightuser=0&page=1
and the punkbuster files from
http://www.pbbans.com/forums/files/call-of-duty-4-linux-file93.html

## Example Docker Compose

Mount the `main` and `zone` folder(except main/video) from an installed and
patched CoD4.

You can place your own `server.cfg` to the mounted `main` directory. (There is a default in this repo)

All options with their defaults:

```yaml
version: '3'

services:
  cod4:
    image: floyd0122/cod4server
    environment:
      - SERVERTYPE=1
      - PORT=28960
      - IP=0.0.0.0
      - RCONPASSWORD=changeme
      - AUTHORIZEMODE=-1
      - MAXCLIENTS=32
      - PUBNKBUSTER=1
      - PASSWORD=chageme
      - CONFIG_FILE=server.cfg
    ports:
      - 28960:28960/udp
      - 28960:28960/tcp
    volumes:
      - ./main:/home/cod4/main
      - ./zone:/home/cod4/zone

```


