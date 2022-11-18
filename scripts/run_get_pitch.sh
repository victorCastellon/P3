#!/bin/bash

# Put here the program (maybe with path)
GETF0="get_pitch --umaxnorm=0.37 --r1norm=0.46 --cclip1=0.025 --cclip2=0.008 --powthr=-16"

for fwav in pitch_db/train/*.wav; do
    ff0=${fwav/.wav/.f0}
    echo "$GETF0 $fwav $ff0 ----"
    $GETF0 $fwav $ff0 > /dev/null || (echo "Error in $GETF0 $fwav $ff0"; exit 1)
done

exit 0
