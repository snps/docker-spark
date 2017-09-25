#!/bin/bash

# Hack to keep a running process in the foreground (needed to avoid container shutdown).
$@ && tail -F /etc/hosts
