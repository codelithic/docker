
#!/usr/bin/env bash

# echo "zzzzz ${RUNUSER}" > /tmp/pollo

/usr/sbin/sshd
nginx -c /home/${RUNUSER}/nginx.conf

# tail -f /dev/null 


 