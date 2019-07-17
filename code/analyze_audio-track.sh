#!/bin/bash
cd ../raw

for filename in *.mkv
do
	name=${filename##*/}
        base=${name%.mkv}
	outname="$base.mlt"
	echo $outname
	melt $filename -filter sox:analysis -consumer xml:$outname video\_off=1 all=1
done

cd ..