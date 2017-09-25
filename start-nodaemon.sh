#!/bin/bash

# Hack to keep a running process in the foreground (needed to avoid container shutdown).
./spark-2.2.0-bin-hadoop2.7/sbin/start-master.sh && tail -F /etc/hosts
