#!/bin/bash
TMPBG=/tmp/screen.png
RES=2560x1440

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=5:1" -vframes 1 $TMPBG
i3lock -i $TMPBG
