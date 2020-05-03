FROM ubuntu
LABEL Author="Roberto di Rienzo"

ARG user
ARG pkey
ARG bindpath


#DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y apt-utils  \
	build-essential  \
	cmake   \
	libxml2 libxml2-dev libxslt1.1 libxslt1-dev    \
	uuid-dev libuuid1   \
	openssh-server    \
	clang clang-format    \
	libtool   \
	libcurl4  curl zlibc zlib1g zlib1g-dev   \
	pkg-config   \
	sudo  tmux vim libfcgi-dev libfcgi-bin libcgicc3 libcgicc-dev nginx &&  \
	rm -f  /etc/ssh/ssh_host_rsa_key && \
	mkdir /var/run/sshd && \
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' && \ 
	useradd $user -d /home/$user  -m -s /usr/bin/bash  && usermod --uid 1000 $user && \
	su $user -c "mkdir -p /home/$user/.ssh" && \
	mkdir -p /etc/sudoers.d/  &&  \
	echo "$user ALL=NOPASSWD: ALL" > /etc/sudoers.d/$user && \
	chmod 0440 /etc/sudoers.d/$user && if [ -n "$pkey" ];then echo "$pkey" > /home/$user/.ssh/authorized_keys ;fi  && \
	echo  "">> /home/$user/.bash_profile 
	
	
	
COPY assets/nginx.conf /home/${user}/nginx.conf.tp

RUN su $user -c "mkdir ~/nginx_root/" 
RUN cat /home/${user}/nginx.conf.tp | \
	sed -e "s@#BIND_PATH#@${bindpath}@g" | \
	sed -e "s@#SERVER_ROOT#@/home/${user}/nginx_root@g" > /home/${user}/nginx.conf && \
	mkdir /etc/t2pc && chown  $user /etc/t2pc

COPY assets/index.html /home/${user}/nginx_root/index.html
COPY ubuntu/entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

# RUN localedef -i en_US -f UTF-8 en_US.UTF-8
# ENV LANGUAGE en_US.UTF-8
# ENV LANG en_US.UTF-8
# ENV LC_ALL en_US.UTF-8

ENV RUNUSER $user

ENTRYPOINT  "/root/entrypoint.sh"
# CMD ["/root/entrypoint.sh"]





