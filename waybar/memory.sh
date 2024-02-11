#/bin/bash

total=$(free -h --si | awk '/^Mem/ {print $2}' | sed 's/G/GB/g; s/M/MB/g')
used=$(free -h --si | awk '/^Mem/ {print $3}' | sed 's/G/GB/g; s/M/MB/g')

echo -n "{\"text\": \"<span weight='600'>$used</span> / <span color='#aaaaaa'>$total</span>\" }"
