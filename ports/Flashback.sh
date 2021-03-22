#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

# Source predefined functions and variables
. /etc/profile

/usr/bin/runemu.sh "/storage/roms/ports/reminiscence" -Pports "${2}" -Creminiscence "-SC${0}" &>>/tmp/logs/exec.log

ret_error=$?

[[ "$ret_error" != 0 ]] && ee_check_bios "REminiscence"

exit $ret_error