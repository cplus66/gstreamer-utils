# gstreamer-utils
Create video test files by using gstreamer.

## Prerequisite
Install additional gstreamer plugins.

<pre>
sudo apt-get install gstreamer1.0-plugins-ugly
sudo apt-get install gstreamer1.0-plugins-bad
sudo apt install gstreamer1.0-libav 
</pre>

## Support Video Width and Height

- 640x480
- 1280x720 (720p)
- 1920x1080 (1080p)
- 3840x2160 (4K)

## Support Encoders and Video Containers

|      | MP4 | QT | AVI | TS |
| HEVC |     |    |     | x  |
| AVC  | x   | x  | x   | x  |
| AV1  | x   |    |     |    |
| VP9  |     |    |     |    |
| VP8  |     |    |     | x  |

## Reference
http://wiki.oz9aec.net/index.php/Gstreamer_cheat_sheet

https://en.wikipedia.org/wiki/Comparison_of_video_container_formats
