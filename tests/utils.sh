#!/bin/bash

colorize="${COLORIZE:-true}"

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NOCOLOR='\033[0m'

function set_color() {
    if [ "$colorize" = true ]; then
        echo -e "$1"
    else
        echo -e ""
    fi
}

function color_text() {
    if [ "$colorize" = true ]; then
        echo -en "$1"
    fi
    echo "${@:2}"
    if "$colorize"; then
        echo -en "$NOCOLOR"
    fi
}

function announce() {
  set_color "$BLUE"
  echo "---------------------------------------------------------------------"
  echo -e "$@"
  echo "---------------------------------------------------------------------"
  set_color "$NOCOLOR"
}

function banner() {
  set_color "$1"
  echo "====================================================================="
  echo -e "${@:2}"
  echo "====================================================================="
  set_color "$NOCOLOR"
}

