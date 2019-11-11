#!/bin/bash
# sudo apt-get install melt=6.4.1-4
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=4501 \
#
#-attach-track ladspa.1197 0=-70 1=-10 \
#-attach-track ladspa.2152 0=128 1=502 2=0 3=20 6=3 \
#-attach-track ladspa.2152 0=128 1=502 2=0 3=-20 6=10 \
#-attach-track avfilter.hflip \
#forrest_gump_ger_stereo.flac in=3150 out=17650

cd raw

##frames: 14500.0
##TRs of 2 sec: 290.0
##Duration: 580.000 sec (=00:09:40:00)
# melt puts in the second frame twice, 
# so do not take frame 3185 but 3186 (and 17684 instead of 17650)

melt -profile hdv_720_25p \
-video-track forrest_gump_bluray_orig.mkv force_fps=25.000 in=3186 out=17684 \
-attach-track watermark:gray_bars_hdv720.png \
-attach-track avfilter.hflip \
\
-audio-track \
forrest_gump_ger_stereo.flac in=3150 out=17648 \
-attach-track volume gain=3.5 \
\
-consumer \
avformat:../fg_av_ger_movies_study.avi \
acodec=libmp3lame ab=256k vcodec=libxvid b=5000k

cd ..