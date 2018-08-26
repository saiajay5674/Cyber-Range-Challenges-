#! /bin/bash
#
#
# Login ID
LOGIN=(replace with login id)
# IP address
IP=(replace with server ip address)

LOGA=a.txt
LOGB=b.txt

 if [ -f $LOGA ] ; then
    rm -f $LOGA
 fi
ssh $LOGIN@$IP '(echo "Disk";df -h;\
 echo "DNS";grep nameserver /etc/resolv.conf;\
 echo "Memory";free|grep -B1 Mem;\
 echo "Kernel";uname -r)' >> a.txt

tr ' ' ',' <$LOGA >$LOGB
