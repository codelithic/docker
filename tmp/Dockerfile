FROM codelithic/environment

RUN apt-get install -y firefox
COPY entrypoint.sh /home/rdr/entrypoint.sh
RUN chmod +x /home/rdr/entrypoint.sh

USER rdr
RUN cd && wget https://download-cf.jetbrains.com/cpp/CLion-2020.1.1.tar.gz && tar -zxvf CLion-2020.1.1.tar.gz
RUN cd && rm CLion-2020.1.1.tar.gz
USER rdr



CMD "/home/rdr/entrypoint.sh"
