#!/usr/bin/sh

# ======================================
# (c) 2018 Adrian Newby
# ======================================
#
# Example syntax for LV creation, targeting raw logical volumes
# for use with Oracle DB
#
# ======================================

# Make db-specific LVs
/usr/sbin/mklv -y'db_cfgdata' -t'jfs2' -T O -a'e' -u'1' -L'db_cfgdata' -x'512'  oradbvg 8 hdisk30       
/usr/sbin/mklv -y'db_cfgindex' -t'jfs2' -T O -a'e' -u'1' -L'db_cfgindex' -x'512'  oradbvg 8 hdisk30       
/usr/sbin/mklv -y'db_ctl1' -t'jfs2' -T O -a'c' -u'4' -L'db_ctl1' -x'512' '-S8K' oradbvg 8 hdisk22 hdisk23 hdisk24 hdisk25    
/usr/sbin/mklv -y'db_ctl2' -t'jfs2' -T O -a'c' -u'4' -L'db_ctl2' -x'512' '-S8K' oradbvg 8 hdisk26 hdisk27 hdisk28 hdisk29    
/usr/sbin/mklv -y'db_data1' -t'jfs2' -T O -a'c' -u'4' -L'db_data1' -x'1024' '-S8K' oradbvg 560 hdisk2 hdisk3 hdisk4 hdisk5    
/usr/sbin/mklv -y'db_data2' -t'jfs2' -T O -a'c' -u'1' -L'db_data2' -x'512'  oradbvg 56 hdisk6       
/usr/sbin/mklv -y'db_data3' -t'jfs2' -T O -a'c' -u'4' -L'db_data3' -x'1024' '-S8K' oradbvg 560 hdisk7 hdisk8 hdisk9 hdisk10    
/usr/sbin/mklv -y'db_data4' -t'jfs2' -T O -a'c' -u'1' -L'db_data4' -x'512'  oradbvg 112 hdisk11       
/usr/sbin/mklv -y'db_data5' -t'jfs2' -T O -a'c' -u'1' -L'db_data5' -x'512'  oradbvg 196 hdisk12       
/usr/sbin/mklv -y'db_dldata' -t'jfs2' -T O -a'm' -u'1' -L'db_dldata' -x'512'  oradbvg 64 hdisk30       
/usr/sbin/mklv -y'db_dlindex' -t'jfs2' -T O -a'm' -u'1' -L'db_dlindex' -x'512'  oradbvg 64 hdisk30       
/usr/sbin/mklv -y'db_ersdata' -t'jfs2' -T O -a'e' -u'1' -L'db_ersdata' -x'512'  oradbvg 8 hdisk30       
/usr/sbin/mklv -y'db_ersindex' -t'jfs2' -T O -a'e' -u'1' -L'db_ersindex' -x'512'  oradbvg 8 hdisk30       
/usr/sbin/mklv -y'db_index1' -t'jfs2' -T O -a'c' -u'1' -L'db_index1' -x'1024'  oradbvg 280 hdisk13       
/usr/sbin/mklv -y'db_index2' -t'jfs2' -T O -a'c' -u'1' -L'db_index2' -x'512'  oradbvg 84 hdisk14       
/usr/sbin/mklv -y'db_index3' -t'jfs2' -T O -a'c' -u'4' -L'db_index3' -x'3072' '-S8K' oradbvg 1680 hdisk15 hdisk16 hdisk17 hdisk18    
/usr/sbin/mklv -y'db_index4' -t'jfs2' -T O -a'c' -u'2' -L'db_index4' -x'512' '-S16K' oradbvg 196 hdisk19 hdisk20      
/usr/sbin/mklv -y'db_index5' -t'jfs2' -T O -a'c' -u'1' -L'db_index5' -x'1024'  oradbvg 343 hdisk21       
/usr/sbin/mklv -y'db_redo1' -t'jfs2' -T O -a'c' -u'1' -L'db_redo1' -x'512'  oradbvg 8 hdisk31       
/usr/sbin/mklv -y'db_redo2' -t'jfs2' -T O -a'c' -u'1' -L'db_redo2' -x'512'  oradbvg 8 hdisk32       
/usr/sbin/mklv -y'db_redo3' -t'jfs2' -T O -a'c' -u'1' -L'db_redo3' -x'512'  oradbvg 8 hdisk31       
/usr/sbin/mklv -y'db_redo4' -t'jfs2' -T O -a'c' -u'1' -L'db_redo4' -x'512'  oradbvg 8 hdisk32       
/usr/sbin/mklv -y'db_sysaux' -t'jfs2' -T O -a'c' -u'1' -L'db_sysaux' -x'512'  oradbvg 16 hdisk30       
/usr/sbin/mklv -y'db_system' -t'jfs2' -T O -a'c' -u'1' -L'db_system' -x'512'  oradbvg 16 hdisk30       
/usr/sbin/mklv -y'db_temp' -t'jfs2' -T O -a'c' -u'4' -L'db_temp' -x'1024' '-S8K' oradbvg 256 hdisk22 hdisk23 hdisk24 hdisk25    
/usr/sbin/mklv -y'db_trndata' -t'jfs2' -T O -a'ie' -u'1' -L'db_trndata' -x'512'  oradbvg 32 hdisk30       
/usr/sbin/mklv -y'db_trnindex' -t'jfs2' -T O -a'ie' -u'1' -L'db_trnindex' -x'512'  oradbvg 32 hdisk30       
/usr/sbin/mklv -y'db_undo' -t'jfs2' -T O -a'c' -u'4' -L'db_undo' -x'1024' '-S8K' oradbvg 256 hdisk26 hdisk27 hdisk28 hdisk29    
/usr/sbin/mklv -y'db_users' -t'jfs2' -T O -a'ie' -u'1' -L'db_users' -x'512'  oradbvg 1 hdisk30       

# Make the oracle user the owner of the db-specific LVs
/usr/bin/chown oracle:dba /dev/db_*
/usr/bin/chown oracle:dba /dev/rdb_*



# Make LVs for associated filesystems
/usr/sbin/mklv -y'archivelv' -t'jfs2' -T O -a'c' -u'2' -L'archivelv' -x'2048' '-S4M' oradbvg 800 hdisk36 hdisk37      
/usr/sbin/mklv -y'data_loadlv' -t'jfs2' -T O -a'c' -u'2' -L'data_loadlv' -x'3072' '-S4M' oradbvg 1600 hdisk38 hdisk39      
/usr/sbin/mklv -y'backuplv' -t'jfs2' -T O -a'c' -u'8' -L'backuplv' -x'16384' '-S1M' oradbvg 8192 hdisk40 hdisk41 hdisk42 hdisk43 hdisk44 hdisk45 hdisk46 hdisk47
/usr/sbin/mklv -y'stagelv' -t'jfs2' -T O -a'c' -u'2' -L'stagelv' -x'1024' '-S4M' oradbvg 384 hdisk49 hdisk50      
/usr/sbin/mklv -y'ads_dirslv' -t'jfs2' -T O -a'e' -u'2' -L'ads_dirslv' -x'3072' '-S4M' oradbvg 1600 hdisk49 hdisk50      
/usr/sbin/mklv -y'opt_oraclelv' -t'jfs2' -T O -a'c' -u'1' -L'opt_oraclelv' -x'1024'  oradbvg 384 hdisk48       
/usr/sbin/mklv -y'opt_locallv' -t'jfs2' -T O -a'c' -u'1' -L'opt_locallv' -x'512'  oradbvg 192 hdisk48   

 


