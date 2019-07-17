#!/bin/sh

# ADJUST AUDIO TRACK
# multiband
#-attach-track ladspa.1197 0=-70 1=-10 \
# compressor
#-attach-track ladspa.2152 0=128 1=502 2=0 3=20 6=3 \
#-attach-track ladspa.2152 0=128 1=502 2=0 3=-20 6=10 \
#-attach-track volume gain=3 \
# melt gone_girl_4010232066077.mkv in=180668 out=182016 -filter sox:analysis -consumer xml:01_gone_girl_org.mlt video\_off=1 all=1

cd ../raw


### LIFE IS BEAUTIFUL ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1148 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
# -attach-track affine transition.geometry=-8,-120:1310x736 \
melt -profile hdv_720_25p \
\
-video-track \
das_leben_ist_schoen_4006680060446.mkv force_fps=25.000 in=164253 out=175400 \
-attach-track watermark:grey_bars/das_leben_ist_schoen.png \
\
-audio-track \
das_leben_ist_schoen_4006680060446.mkv in=164253 out=175400 \
-attach-track volume gain=5.20641 \
\
-consumer \
avformat:../stimuli/das_leben_ist_schoen.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k


### DEAD MAN WALKING ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=2830 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
dead_man_walking_4045167012851.mkv force_fps=25.000 in=147966 out=160795 \
-attach-track watermark:grey_bars/dead_man_walking.png \
\
-audio-track \
dead_man_walking_4045167012851.mkv in=147966 out=160795 \
-attach-track volume gain=5.53619 \
\
-consumer \
avformat:../stimuli/dead_man_walking.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### DEAD POET SOCIETY ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1757 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
der_club_der_toten_dichter_4011846004516.mkv force_fps=25.000 in=168728 out=180484 \
\
-audio-track \
der_club_der_toten_dichter_4011846004516.mkv in=168728 out=180484 \
-attach-track volume gain=4.979 \
\
-consumer \
avformat:../stimuli/der_club_der_toten_dichter.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### DIRTY DANCING ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1375 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
dirty_dancing_4010324202987.mkv force_fps=25.000 in=128862 out=140236 \
\
-audio-track \
dirty_dancing_4010324202987.mkv in=128862 out=140236 \
-attach-track volume gain=4.80456 \
\
-consumer \
avformat:../stimuli/dirty_dancing.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### SCREAM ###
# old scream: -attach-track affine transition.geometry=-8,-120:1300x975 \
#-video-track \
#meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
#meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1352 \
#\
#-transition composite \
#\
melt -profile hdv_720_25p \
\
-video-track \
scream_4006680054308.mkv force_fps=25.000 in=420 out=11351 \
-attach-track watermark:grey_bars/scream.png \
\
-audio-track \
scream_4006680054308.mkv in=420 out=11351 \
-attach-track volume gain=3.26209 \
\
-consumer \
avformat:../stimuli/scream.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### THE GOOD, THE BAD, THE UGLY ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=9999 \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=2567 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
zwei_glohrreiche_halunken_4045167013506.mkv force_fps=25.000 in=229445 out=242011 \
-attach-track watermark:grey_bars/zwei_glohrreiche_halunken.png \
\
-audio-track \
zwei_glohrreiche_halunken_4045167013506.mkv in=229445 out=242011 \
-attach-track volume gain=7.55968 \
\
-consumer \
avformat:../stimuli/zwei_glohrreiche_halunken.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k


### GONE GIRL ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1348 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
gone_girl_4010232066077.mkv force_fps=25.000 in=180668 out=182016 \
-attach-track watermark:grey_bars/gone_girl.png \
\
-audio-track \
gone_girl_4010232066077.mkv in=180668 out=182016 \
-attach-track volume gain=6.19541 \
\
-consumer \
avformat:../stimuli/01_gone_girl.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Seven ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1330 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
sieben_7321925000542.mkv force_fps=25.000 in=170176 out=171506 \
-attach-track watermark:grey_bars/sieben.png \
\
-audio-track \
sieben_7321925000542.mkv in=170176 out=171506 \
-attach-track volume gain=3.86541 \
\
-consumer \
avformat:../stimuli/02_seven.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k


### The Sex of Angels ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=871 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
the_sex_of_angels_4031846010829.mkv force_fps=25.000 in=53989 out=54860 \
-attach-track watermark:grey_bars/the_sex_of_angels.png \
\
-audio-track \
the_sex_of_angels_4031846010829.mkv in=53989 out=54860 \
-attach-track volume gain=25.3353 \
\
-consumer \
avformat:../stimuli/03_the_sex_of_angels.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### The Hobbit ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1476 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
der_hobbit_3_part1_505189030034.mkv force_fps=25.000 in=4174 out=5650 \
-attach-track watermark:grey_bars/der_hobbit.png \
\
-audio-track \
der_hobbit_3_part1_505189030034.mkv in=4174 out=5650 \
-attach-track volume gain=1.77867 \
\
-consumer \
avformat:../stimuli/04_der_hobbit.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Lost in Translation ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1526 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
lost_in_translation_4011976821885.mkv force_fps=25.000 in=133282 out=134808 \
-attach-track watermark:grey_bars/lost_in_translation.png \
\
-audio-track \
lost_in_translation_4011976821885.mkv in=133282 out=134808 \
-attach-track volume gain=3.79761 \
\
-consumer \
avformat:../stimuli/05_lost_in_translation.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Blau ist eine warme Farbe #1 ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1464 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
blau_ist_eine_warme_farbe_4042564167412.mkv force_fps=25.000 in=117999 out=119463 \
-attach-track watermark:grey_bars/blau_ist_eine_warme_farbe.png \
\
-audio-track \
blau_ist_eine_warme_farbe_4042564167412.mkv in=117999 out=119463 \
-attach-track volume gain=0.915861 \
\
-consumer \
avformat:../stimuli/06_blau_ist_eine_warme_farbe1.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Blau ist eine warme Farbe #2 ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1622 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
blau_ist_eine_warme_farbe_4042564167412.mkv force_fps=25.000 in=200347 out=201969 \
-attach-track watermark:grey_bars/blau_ist_eine_warme_farbe.png \
\
-audio-track \
blau_ist_eine_warme_farbe_4042564167412.mkv in=200347 out=201969 \
-attach-track volume gain=2.13682 \
\
-consumer \
avformat:../stimuli/11_blau_ist_eine_warme_farbe2.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Star Wars 3 Revenge of The Sith ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1546 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
star_wars_3_die_rache_der_sith_4010232061898.mkv force_fps=25.000 in=169925 out=171474 \
-attach-track watermark:grey_bars/star_wars_3_die_rache_der_sith.png \
\
-audio-track \
star_wars_3_die_rache_der_sith_4010232061898.mkv in=169925 out=171474 \
-attach-track volume gain=3.43042 \
\
-consumer \
avformat:../stimuli/07_star_wars_3_die_rache_der_sith.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Short Term 12 #1 ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1107 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
short_term_12_4029759096474.mkv force_fps=25.000 in=126686 out=127793 \
-attach-track watermark:grey_bars/short_term_12.png \
\
-audio-track \
short_term_12_4029759096474.mkv in=126686 out=127793 \
-attach-track volume gain=5.27799 \
\
-consumer \
avformat:../stimuli/08_short_term_12a.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Short Term 12 #2 ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1169 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
short_term_12_4029759096474.mkv force_fps=25.000 in=132830 out=133999 \
-attach-track watermark:grey_bars/short_term_12.png \
\
-audio-track \
short_term_12_4029759096474.mkv in=132830 out=133999 \
-attach-track volume gain=5.27799 \
\
-consumer \
avformat:../stimuli/12_short_term_12b.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Shining ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1345 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
melt -profile hdv_720_25p \
\
-video-track \
shining_7321925011531.mkv force_fps=25.000 in=143875 out=145220 \
\
-audio-track \
shining_7321925011531.mkv in=143875 out=145220 \
-attach-track volume gain=4.8479 \
\
-consumer \
avformat:../stimuli/09_shining.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k



### Harry and Sally ###
# -video-track \
# meta.media.width=1280 meta.media.height=720 indicator/.all.png ttl=1 aspect_ratio=1 progressive=1 out=1163 \
# \
# -attach-track affine transition.geometry=1245/690:50x30:100 \
# -transition composite \
# \
#analyze audio track for later normalization
melt -profile hdv_720_25p \
\
-video-track \
harry_und_sally_4045167012813.mkv force_fps=25.000 in=67150 out=68313 \
-attach-track watermark:grey_bars/harry_und_sally.png \
\
-audio-track \
harry_und_sally_4045167012813.mkv in=67150 out=68313 \
-attach-track volume gain=5.8193 \
\
-consumer \
avformat:../stimuli/10_harry_und_sally.avi \
acodec=libmp3lame ab=256k \
vcodec=libxvid b=5000k

cd ..

ffmpeg -f concat -safe 0 -i <(for f in stimuli/??_*.avi; do echo "file '$PWD/$f'"; done) -c copy stimuli/ShortSequences2.avi
