#!/usr/bin/env bash

iface="wlp3s0"
cachedir="${XDG_CACHE_HOME:-$HOME/.cache}/i3blocks"
statefile="$cachedir/net_$iface"
mkdir -p "$cachedir"

interval=${BLOCK_INTERVAL:-1}

read rx tx <<EOF
$(awk -F '[: ]+' -v iface="$iface" '$1 == iface {print $2, $10}' /proc/net/dev)
EOF

[ -z "$rx" ] && echo "NoNet" && exit 0

if [ ! -f "$statefile" ]; then
    echo "$rx $tx" > "$statefile"
    echo "0KB 0KB"
    exit
fi

read oldrx oldtx < "$statefile"

diffrx=$((rx - oldrx))
difftx=$((tx - oldtx))

echo "$rx $tx" > "$statefile"

rxrate=$((diffrx / 1024 / interval))
txrate=$((difftx / 1024 / interval))

echo "${rxrate}KB / ${txrate}KB"
