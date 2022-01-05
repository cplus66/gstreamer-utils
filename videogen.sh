#!/bin/bash -e
WIDTH=${WIDTH:-640}
HEIGHT=${HEIGHT:-480}
ENCODE=${ENCODE:-x264}
FPS=${FPS:-30}
MUX=${MUX:-mp4}
LOG=videogen-$(date +%F).log

usage()
{
  echo "ENCODE=<h264|hevc|vp8|vp9|av1> WIDTH=<w> HEIGHT=<h> FPS=<fps> MUX=<mp4|avi|ts|qt|webm> $0 <dir>"
}

if [ -z $1 ]; then
  usage
  exit 0
fi

if [ ! -d $1 ]; then
  echo "Directory doesn't exist"
  usage
  exit 0
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

echo [$(date)] | tee -a $LOG
FILE=$1/${WIDTH}-${HEIGHT}-${FPS}-${ENCODE}.${MUX}
gst-launch-1.0 videotestsrc num-buffers=$((FPS * 10)) ! video/x-raw, framerate=$FPS/1, width=$WIDTH, height=$HEIGHT !\
       	${_ENCODE}enc ! ${_MUX}mux ! filesink location=$FILE | tee -a $LOG

mediainfo $FILE > $FILE.info
