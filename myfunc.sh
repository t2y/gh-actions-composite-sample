#!/bin/bash

#set -euC

function f1() {
    local arg1="$1"
    local arg2="$2"

    echo "${arg1}, ${arg2}"
}

function f2() {
    local arg1="$@"

    echo "${arg1}"
    if [[ -n "$@" ]]; then
        eval $@
    else
        echo "no arguments"
    fi
}
