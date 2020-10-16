#!/bin/bash
set -ex

#mkdir -p ~/.fluxbox
#cat << EOF >>  ~/.fluxbox/menu
#[exec] (chromium) {'/usr/bin/chromium --no-sandbox --disable-dev-shm-usage'}
#EOF

cat >> chr << EOF
/usr/bin/chromium --no-sandbox --disable-dev-shm-usage
EOF

exec supervisord -c /app/supervisord.conf
