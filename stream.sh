#! /bin/bash
#
# YouTube streaming with ffmpeg

# Configure youtube with 720p resolution. The video is not scaled.

VBR="2500k"                                    # Bitrate of the output video it will show 4K if your video qulity is 4K
FPS="30"                                       # FPS of the output video
QUAL="medium"                                  # FFMPEG quality preset
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"  # URL of base RTMP youtube | You can use Facebok or other also.

SOURCE="live_08312020.mp4"                     # Source UDP/ Local File / S3
KEY="YOUR_KEY"                                 # Your stream key

ffmpeg \
    -i "$SOURCE" -deinterlace \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale 3 -b:a 712000 -bufsize 512k \
    -f flv "$YOUTUBE_URL/$KEY"
