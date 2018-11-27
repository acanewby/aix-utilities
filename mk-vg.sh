#!/usr/bin/sh

# ======================================
# (c) 2018 Adrian Newby
# ======================================
#
# Example scripted VG creation for AIX
#
# Takes two numeric parameters, denoting
# the beginning and ending of a sequence
# of hdisks
#
# ======================================

# -B = Big volume group - 128 PVs, 512 LVs
# -s 128 = 128MB LP size

PV=$1
LASTPV=$2



# Start the volume group with the first PV
mkvg -B -s 128 -y oradbvg hdisk$PV
PV=`expr $PV + 1`

# Now, add in all the other PVs
while [ $PV -le $LASTPV ]
do
	extendvg -f oradbvg hdisk${PV}

        PV=`expr $PV + 1`
done
