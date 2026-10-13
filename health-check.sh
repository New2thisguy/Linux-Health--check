#1/bin/bash
{
echo "-- Linux Health Check--"
echo
date 
hostname 
uptime -p
df -h -x tmpfs -x devtmpfs
free -h
systemctl --failed --no-pager
echo "+++ SSh Status+++"
systemctl is-active ssh 
systemctl is-active sshd
} 2>&1 | tee "health-report-$(date +%Y%m%d-%H%M%S) .txt"
