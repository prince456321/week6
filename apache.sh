#!/bin/bash
set -e

# Compatible Amazon Linux 2 / 2023
if command -v dnf >/dev/null 2>&1; then
  dnf -y update
  dnf -y install httpd
else
  yum -y update
  yum -y install httpd
fi

systemctl enable httpd
systemctl start httpd

echo "<h1> fokoua et anielma sont maries </h1>" >> /var/www/html/index.html
echo "<h1> cat /var/www/html/index.html </h1>" >> /var/www/html/index.html
ls /etc >> /var/www/html/index.html