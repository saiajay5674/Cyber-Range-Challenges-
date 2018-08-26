#! /bin/bash
#
#
echo -e "Login ID\n"
read LOGIN

echo -e "IP Address\n"
read IP

LOGA=a.txt
LOGB=b.txt

 if [ -f $LOGA ] ; then
    rm -f $LOGA
 fi
ssh $LOGIN@$IP '(echo "Disk";df -h;\
 echo "DNS";grep nameserver /etc/resolv.conf;\
 echo "Memory";free|grep -B1 Mem;\
 echo "Kernel";uname -r)' >> $LOGA

tr ' ' ',' <$LOGA >$LOGB

