#/bin/bash

total=$(free -h --si | awk '/^Mem/ {print $2}')
used=$(free -h --si | awk '/^Mem/ {print $3}')

echo -n "{\"text\": \"<span weight='600'>$used</span> / <span color='#aaaaaa'>$total</span>\" }"
