# aix-utilities

## Introduction
This repository houses a collection of useful scripts for care and feeding of IBM AIX (pSeries) hosts. A summary of each script is presented below:

* aix-server-health-check - Performs a variety of read-only inquiries to build a quick and dirty overall picture of the host configuration in terms of CPU, memory, storage configuration etc. Also includes basic information about any Oracle Database installation it finds.

* backup-vios - Creates a `mksysb` backup to a remote NFS share

* label-pvs.sh - Applies a PV label to a contiguous sequence of hdisks

* mk-lvs.sh - Example script illustrating syntax for creating LVs suitable for an Oracle database based on raw logical volumes

* mk-paired-dedicated-dump-devices - Create redundant, arbitrarily-sized primary and secondary dump devices on a named pair of hdisks.  Essential for any HA configuration

* mk-secondary-dump-device - Create an arbitrarily-sized secondary dump device

* mk-vg.sh - Creates an Oracle-specific volume group (named oradbvg), containing a contiguous sequence of hdisks


___(c) Adrian Newby, 2007___