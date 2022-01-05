all: mp4 qt avi ts

mp4:
	MUX=mp4 WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=60 ./videogen.sh output

	MUX=mp4 WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=30 ./videogen.sh output 
	MUX=mp4 WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=60 ./videogen.sh output 

	MUX=mp4 WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=60 ./videogen.sh output

	MUX=mp4 WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=60 ./videogen.sh output

mp4-avi:
	MUX=mp4 WIDTH=640  HEIGHT=480  ENCODE=av1  FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=640  HEIGHT=480  ENCODE=av1  FPS=60 ./videogen.sh output
	MUX=mp4 WIDTH=1280 HEIGHT=720  ENCODE=av1  FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=1280 HEIGHT=720  ENCODE=av1  FPS=60 ./videogen.sh output
	MUX=mp4 WIDTH=1920 HEIGHT=1080 ENCODE=av1  FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=1920 HEIGHT=1080 ENCODE=av1  FPS=60 ./videogen.sh output
	MUX=mp4 WIDTH=3840 HEIGHT=2160 ENCODE=av1  FPS=30 ./videogen.sh output
	MUX=mp4 WIDTH=3840 HEIGHT=2160 ENCODE=av1  FPS=60 ./videogen.sh output
	
qt:
	MUX=qt  WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=qt  WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=60 ./videogen.sh output

	MUX=qt  WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=30 ./videogen.sh output 
	MUX=qt  WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=60 ./videogen.sh output 

	MUX=qt  WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=qt  WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=60 ./videogen.sh output

	MUX=qt  WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=qt  WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=60 ./videogen.sh output
	
avi:
	MUX=avi WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=avi WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=avi WIDTH=640  HEIGHT=480  ENCODE=vp8  FPS=30 ./videogen.sh output
	MUX=avi WIDTH=640  HEIGHT=480  ENCODE=vp8  FPS=60 ./videogen.sh output

	MUX=avi WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=30 ./videogen.sh output 
	MUX=avi WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=60 ./videogen.sh output 
	MUX=avi WIDTH=1280 HEIGHT=720  ENCODE=vp8  FPS=30 ./videogen.sh output
	MUX=avi WIDTH=1280 HEIGHT=720  ENCODE=vp8  FPS=60 ./videogen.sh output

	MUX=avi WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=avi WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=avi WIDTH=1920 HEIGHT=1080 ENCODE=vp8  FPS=30 ./videogen.sh output
	MUX=avi WIDTH=1920 HEIGHT=1080 ENCODE=vp8  FPS=60 ./videogen.sh output

	MUX=avi WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=avi WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=avi WIDTH=3840 HEIGHT=2160 ENCODE=vp8  FPS=30 ./videogen.sh output
	MUX=avi WIDTH=3840 HEIGHT=2160 ENCODE=vp8  FPS=60 ./videogen.sh output
	
ts:
	MUX=ts  WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=640  HEIGHT=480  ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=ts  WIDTH=640  HEIGHT=480  ENCODE=hevc FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=640  HEIGHT=480  ENCODE=hevc FPS=60 ./videogen.sh output

	MUX=ts  WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=30 ./videogen.sh output 
	MUX=ts  WIDTH=1280 HEIGHT=720  ENCODE=h264 FPS=60 ./videogen.sh output 
	MUX=ts  WIDTH=1280 HEIGHT=720  ENCODE=hevc FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=1280 HEIGHT=720  ENCODE=hevc FPS=60 ./videogen.sh output

	MUX=ts  WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=1920 HEIGHT=1080 ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=ts  WIDTH=1920 HEIGHT=1080 ENCODE=hevc FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=1920 HEIGHT=1080 ENCODE=hevc FPS=60 ./videogen.sh output

	MUX=ts  WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=3840 HEIGHT=2160 ENCODE=h264 FPS=60 ./videogen.sh output
	MUX=ts  WIDTH=3840 HEIGHT=2160 ENCODE=hevc FPS=30 ./videogen.sh output
	MUX=ts  WIDTH=3840 HEIGHT=2160 ENCODE=hevc FPS=60 ./videogen.sh output
	
clean:
	rm -f output/*
