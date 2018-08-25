#!/bin/sh
set -ev;

echo Starting
./oauth2_proxy -config /proxy-workdir/config.cfg
