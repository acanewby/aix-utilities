#!/usr/bin/sh

# ======================================
# (c) 2018 Adrian Newby
# ======================================
# Given two numeric parameters, loops through
# sequence and labels all hdisks as PVs
# ======================================

PV=$1
LASTPV=$2

while [ $PV -le $LASTPV ]
do
	chdev -l hdisk${PV} -a pv=yes
	
	PV=`expr $PV + 1`
done

