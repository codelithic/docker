FROM codelithic/environment

ARG user

RUN apt-get install -y firefox
COPY entrypoint.sh /etc/entrypoint/entrypoint.sh
RUN chmod +x /etc/entrypoint/entrypoint.sh

USER ${user}
RUN cd && wget https://download-cf.jetbrains.com/cpp/CLion-2020.1.1.tar.gz && tar -zxvf CLion-2020.1.1.tar.gz && cd && rm CLion-2020.1.1.tar.gz
ENV RUNUSER $user

CMD "/etc/entrypoint/entrypoint.sh"



