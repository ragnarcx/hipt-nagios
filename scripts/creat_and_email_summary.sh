#! /bin/bash
# Define date variable
DATESTAMP=$(date +"%m-%d-%y")

#Scrape page and save to file with datestamp
wkhtmltopdf --username nagiosadmin --password 1 http://172.16.70.202/nagios/cgi-bin/status.cgi /var/www/html/status_images/summary_$DATESTAMP.pdf

echo "DAILY REPORT NAGIOS" | mail -a "/var/www/html/status_images/summary_$DATESTAMP.pdf" -s "DAILY REPORT NAGIOS" -- mr.datcx@gmail.com
