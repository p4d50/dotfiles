#!/bin/bash

internet_connected() {
  local interface=$(ip route | awk '/default/ {print $5}')
  local ip_address=$(ip -4 addr show dev $interface | awk '/inet / {print $2}' | cut -d '/' -f 1)

  [ -n "$ip_address" ]
}

if internet_connected; then
  icon=""
  tooltip="Connected"
  alt="true"
else
  icon=""
  tooltip="No Internet"
  alt="false"
fi

output="{\"text\":\"$icon\",\"tooltip\":\"$tooltip\",\"class\":\"custom-module\",\"alt\":$alt}"
echo "$output"
