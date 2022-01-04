#!/bin/bash -xe
WIDTH=${WIDTH:-640}
HEIGHT=${HEIGHT:-480}
ENCODER=${ENCODER:-x264enc}

gst-launch-1.0 videotestsrc num-buffers=500 ! video/x-raw, framerate=25/1, width=$WIDTH, height=$HEIGHT ! x264enc ! mpegtsmux ! filesink location=test.ts
