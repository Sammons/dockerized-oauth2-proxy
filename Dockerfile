FROM alpine:latest

RUN apk update && apk add jq && addgroup g1000 -S -g 1000 && adduser -H -S -G g1000 -u 1000 u1000

# <uid>:<gid>
USER 1000:1000

WORKDIR /proxy-workdir

# 2.2.1
ADD --chown=1000:1000 oauth2_proxy /proxy-workdir/oauth2_proxy
ADD --chown=1000:1000 start.sh /proxy-workdir/start.sh

CMD sh /proxy-workdir/start.sh

