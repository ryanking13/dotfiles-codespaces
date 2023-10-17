#!/bin/bash

BASEDIR=$(dirname "$0")
$BASEDIR/install-zsh.sh
$BASEDIR/install-config.sh
$BASEDIR/install-tools.sh
