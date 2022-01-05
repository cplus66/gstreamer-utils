#!/bin/bash -ex
# Date: jay 05, 2022
# Author: cplus.shen
# Description: Test Video Files Generator.
#   ENCODE: h264, hevc, vp8, vp9, avi
#   WIDTHxHEIGHT: 640x480, 1280x720, 1920x1080, 3840x2160
#   MUX: mp4, ts, qt, webm
#   FORMAT: 420, 422, 444 (10-bit optional)
#   BIT_RATE: 2048 kbps (default)

WIDTH=${WIDTH:-640}
HEIGHT=${HEIGHT:-480}
ENCODE=${ENCODE:-x264}
FPS=${FPS:-30}
MUX=${MUX:-mp4}
FORMAT=${FORMAT:-420}
LOG=videogen-$(date +%F).log

usage()
{
  echo "ENCODE=<h264|hevc|vp8|vp9|av1> WIDTH=<w> HEIGHT=<h> FPS=<fps> MUX=<mp4|avi|ts|qt|webm>"
  echo "FORMAT=<420|422|444> $0 <dir>"
}

if [ -z $1 ]; then
  usage
  exit 0
fi

if [ ! -d $1 ]; then
  mkdir -p $1
fi

if [ ! -d $1/info ]; then
  mkdir -p $1/info
fi

case $ENCODE in
h264)
  _ENCODE=x264
  ;;
hevc)
  _ENCODE=x265
  ;;
*)
  _ENCODE=$ENCODE
  ;;
esac

case $MUX in
ts)
  _MUX=mpegts
  ;;
*)
  _MUX=$MUX
  ;;
esac

# https://gstreamer.freedesktop.org/documentation/additional/design/mediatype-video-raw.html?gi-language=c
# 420, 10-bit, I420_10LE, I420_10BE
# 422, 10-bit, I422_10LE, I422_10BE
# 444, 10-bit, Y444_10LE, Y444_10BE
case $FORMAT in
420)
  _FORMAT=I420
  ;;
422)
  _FORMAT=YUY2
  ;;
444)
  _FORMAT=AYUV
  ;;
*)
  _FORMAT=$FORMAT
  ;;
esac

echo [$(date)] | tee -a $LOG

FILE=$1/${WIDTH}-${HEIGHT}-${FPS}-${ENCODE}-${FORMAT}.${MUX}
INFO=$1/info/${WIDTH}-${HEIGHT}-${FPS}-${ENCODE}-${FORMAT}.${MUX}.info

# TBD: x264enc bitrate=2048
gst-launch-1.0 videotestsrc num-buffers=$((FPS * 10)) ! \
	video/x-raw, framerate=$FPS/1, width=$WIDTH, height=$HEIGHT,format=$_FORMAT !\
	timeoverlay !\
	videoconvert !\
	${_ENCODE}enc !\
	${_MUX}mux !\
	filesink location=$FILE \
	| tee -a $LOG

mediainfo $FILE > $INFO
