#!/usr/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')

# short text
echo "BAT: $BAT"

# urgent flag below 10%
[ ${BAT%?} -le 10 ] && exit 33


exit 0
