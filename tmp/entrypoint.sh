
#!/usr/bin/env bash

# echo "zzzzz ${RUNUSER}" > /tmp/pollo

# /usr/sbin/sshd
/home/rdr/clion-2020.1.1/bin/clion.sh 2>/dev/null 1>/dev/null  &
sudo nginx -c /home/${RUNUSER}/nginx.conf

# tail -f /dev/null 
