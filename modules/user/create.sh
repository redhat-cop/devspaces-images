#!/bin/sh

set -e

groupadd -r user -g 1000 && useradd -u 1000 -r -g user -m -d /home/user -s /sbin/nologin -c "Regular user" user