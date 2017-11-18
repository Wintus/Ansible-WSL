#!/usr/bin/env bash
# load .bash.d fragments
BASHD="${HOME}/.bash.d"
if [ -d ${BASHD} ]; then
    for f in ${BASHD}/*.sh; do
        [ -x "$f" ] && source "$f"
    done
    unset f
fi
