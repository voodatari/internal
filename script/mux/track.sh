#!/bin/sh

NAME="/mnt/mmc/MUOS/info/activity/$1.act"
shift
PROG="nice --20 $*"

PREV_SYS=$(cat "$NAME" | sed -n '1p')
PREV_TIME=$(cat "$NAME" | sed -n '2p')
PREV_LAUNCH=$(cat "$NAME" | sed -n '3p')

START_TIME=$(date +%s)
eval "$PROG"
FINISH_TIME=$(date +%s)

ELAPSED_TIME=$(echo "$FINISH_TIME - $START_TIME" | bc)
TOTAL_TIME=$(echo "$ELAPSED_TIME + $PREV_TIME" | bc)

LAUNCH_COUNT=$(echo "$PREV_LAUNCH" + 1 | bc)

printf "%s\n%.0f\n%.0f" "$PREV_SYS" "$TOTAL_TIME" "$LAUNCH_COUNT" > "$NAME"
