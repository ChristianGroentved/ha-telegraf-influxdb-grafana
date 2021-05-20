#!/bin/sh

set -e
influx bucket create -n telegraf -o hkb -r 7d
