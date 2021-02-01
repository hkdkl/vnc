#!/bin/bash
set -ex

#mkdir -p ~/.fluxbox
#cat << EOF >>  ~/.fluxbox/menu
#[exec] (chromium) {'/usr/bin/chromium --no-sandbox --disable-dev-shm-usage'}
#EOF

cat >> chr << EOF
/usr/bin/chromium --no-sandbox --disable-setuid-sandbox --disable-dev-shm-usage --no-zygote --single-process --no-pings --no-first-run --disable-accelerated-2d-canvas --disable-gpu
EOF

exec supervisord -c /app/supervisord.conf
