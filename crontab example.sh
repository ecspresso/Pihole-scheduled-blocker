# m h  dom mon dow   command

# Add domains to the blacklist at 22:00 every day and remove them again at 06:00 the day after.
0 22 * * * /home/pi/script.sh block   >> /home/pi/dns_$(date +\%Y\%m\%d).log
0 6  * * * /home/pi/script.sh unblock >> /home/pi/dns_$(date +\%Y\%m\%d).log

# Remove all files older than 10 days.
0 0 * * * find /home/pi/dns_* -type f -mtime +10 -delete
