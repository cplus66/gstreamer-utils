# gstreamer-utils
Create video test files by using gstreamer.

## Prerequisite
Install additional gstreamer plugins.

<pre>
sudo apt-get update
sudo apt-get install -y gstreamer1.0-plugins-good
sudo apt-get install -y gstreamer1.0-plugins-ugly
sudo apt-get install -y gstreamer1.0-plugins-bad
sudo apt-get install -y gstreamer1.0-libav
sudo apt-get install -y gstreamer1.0-tools
sudo apt-get install -y gstreamer1.0-x
sudo apt-get install -y mediainfo
</pre>

For GStreamer Developer
<pre>
sudo apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev \
gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav \
gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 \
gstreamer1.0-pulseaudio
</pre>

## Support Video Width and Height

- 640x480
- 1280x720 (720p)
- 1920x1080 (1080p)
- 3840x2160 (4K)

## Support Encoders and Video Containers

Name | MP4 | QT  | AVI | TS 
---  | --- | --- | --- | ---      
HEVC |     |     |     | x  
AVC  | x   | x   | x   | x  
AV1  | x   |     |     |    
VP9  |     |     |     |    
VP8  |     |     |     | x  

## Reference
http://wiki.oz9aec.net/index.php/Gstreamer_cheat_sheet

https://en.wikipedia.org/wiki/Comparison_of_video_container_formats
