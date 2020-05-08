
#!/usr/bin/env bash

/usr/sbin/sshd
/home/${RUNUSER}/clion-2020.1.1/bin/clion.sh 2>/dev/null 1>/dev/null  &
sudo nginx -c /home/${RUNUSER}/nginx.conf

