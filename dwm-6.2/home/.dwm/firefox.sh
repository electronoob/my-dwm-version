#!/bin/bash
if ! pgrep -x firefox >/dev/null
then
	firefox >/dev/null &
fi
