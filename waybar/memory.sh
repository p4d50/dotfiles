#/bin/bash

total=$(free -h --si | awk '/^Mem/ {print $2}')
used=$(free -h --si | awk '/^Mem/ {print $3}')

echo -n "{\"text\": \"$used / <span color='#aaaaaa'>$total</span>\" }"
