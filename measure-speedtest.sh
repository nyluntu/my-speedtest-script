#!/bin/bash

# this script needs speedtest-cli tool to work.
# https://github.com/sivel/speedtest-cli

# create all output files
mkdir -p output/elisa
mkdir -p output/dna
mkdir -p output/nebula
mkdir -p output/vincit
mkdir -p output/telia
mkdir -p output/sigmatic
echo "Output directories created"

# call speedtest tool and save output
echo "$(date): Elisa start"
/mnt/c/dev/speedtests/speedtest-cli --server 4549 --json --bytes > output/elisa/"$(date +"%F_%H-%M").json"

echo "$(date): Dna start"
/mnt/c/dev/speedtests/speedtest-cli --server 4427 --json --bytes > output/dna/"$(date +"%F_%H-%M").json"

echo "$(date): Nebula start"
/mnt/c/dev/speedtests/speedtest-cli --server 864 --json --bytes > output/nebula/"$(date +"%F_%H-%M").json"

echo "$(date): Vincit start"
/mnt/c/dev/speedtests/speedtest-cli --server 8185 --json --bytes > output/vincit/"$(date +"%F_%H-%M").json"

echo "$(date): Telia start"
/mnt/c/dev/speedtests/speedtest-cli --server 10106 --json --bytes > output/telia/"$(date +"%F_%H-%M").json"

echo "$(date): Sigmatic start"
/mnt/c/dev/speedtests/speedtest-cli --server 10413 --json --bytes > output/sigmatic/"$(date +"%F_%H-%M").json"
