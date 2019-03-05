#!/bin/bash 
#
echo "/ip firewall address-list remove [find list=russianbl]" >rkn.rsc
curl -i "https://rkn.darkbyte.ru/openvpn.php?show=all&groupby=24"|grep route|awk -F\" '{print $2}'|awk  '{print $2"/"$3}'|awk -F'/' '
$2=="255.255.255.255" { print "/ip firewall address-list add address="$1 "/32 list=russianbl" }
$2=="255.255.255.254" { print "/ip firewall address-list add address="$1 "/31 list=russianbl" }
$2=="255.255.255.252" { print "/ip firewall address-list add address="$1 "/30 list=russianbl" }
$2=="255.255.255.248" { print "/ip firewall address-list add address="$1 "/29 list=russianbl" }
$2=="255.255.255.240" { print "/ip firewall address-list add address="$1 "/28 list=russianbl" }
$2=="255.255.255.224" { print "/ip firewall address-list add address="$1 "/27 list=russianbl" }
$2=="255.255.255.192" { print "/ip firewall address-list add address="$1 "/26 list=russianbl" }
$2=="255.255.255.128" { print "/ip firewall address-list add address="$1 "/25 list=russianbl" }
$2=="255.255.255.0" { print "/ip firewall address-list add address="$1 "/24 list=russianbl" }
$2=="255.255.254.0" { print "/ip firewall address-list add address="$1 "/23 list=russianbl" }
$2=="255.255.252.0" { print "/ip firewall address-list add address="$1 "/22 list=russianbl" }
$2=="255.255.248.0" { print "/ip firewall address-list add address="$1 "/21 list=russianbl "}
$2=="255.255.240.0" { print "/ip firewall address-list add address="$1 "/20 list=russianbl" }
$2=="255.255.224.0" { print "/ip firewall address-list add address="$1 "/19 list=russianbl" }
$2=="255.255.192.0" { print "/ip firewall address-list add address="$1 "/18 list=russianbl" }
$2=="255.255.128.0" { print "/ip firewall address-list add address="$1 "/17 list=russianbl" }
$2=="255.255.0.0" { print "/ip firewall address-list add address="$1 "/16 list=russianbl" }
$2=="255.254.0.0" { print "/ip firewall address-list add address="$1 "/15 list=russianbl" }
$2=="255.252.0.0" { print "/ip firewall address-list add address="$1 "/14 list=russianbl" }
$2=="255.248.0.0" { print "/ip firewall address-list add address="$1 "/13 list=russianbl" }
$2=="255.240.0.0" { print "/ip firewall address-list add address="$1 "/12 list=russianbl" }
$2=="255.224.0.0" { print "/ip firewall address-list add address="$1 "/11 list=russianbl" }
$2=="255.192.0.0" { print "/ip firewall address-list add address="$1 "/10 list=russianbl" }
$2=="255.128.0.0" { print "/ip firewall address-list add address="$1 "/9 list=russianbl" }
$2=="255.0.0.0" { print "/ip firewall address-list add address="$1 "/8 list=russianbl" }
$2=="254.0.0.0" { print "/ip firewall address-list add address="$1 "/7 list=russianbl" }
$2=="252.0.0.0" { print "/ip firewall address-list add address="$1 "/6 list=russianbl" }
$2=="248.0.0.0" { print "/ip firewall address-list add address="$1 "/5 list=russianbl" }
$2=="240.0.0.0" { print "/ip firewall address-list add address="$1 "/4 list=russianbl" }
$2=="224.0.0.0" { print "/ip firewall address-list add address="$1 "/3 list=russianbl" }
$2=="192.0.0.0" { print "/ip firewall address-list add address="$1 "/2 list=russianbl" }
$2=="128.0.0.0" { print "/ip firewall address-list add address="$1 "/1 list=russianbl" }
'>>rkn.rsc


