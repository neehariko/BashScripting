echo "Check Disk Usage in Linux FileSystem"
disk_size=df -h | grep /dev/root | awk '{print $5}' | cut -d '%' -f1
echo "$disk_size% of disk is filled"
if [$disk_size -gt  80] ;
then
    echo "disk is utilized more than 80% expand disk or delete files"
else
    echo "enough disk is available"

fi
