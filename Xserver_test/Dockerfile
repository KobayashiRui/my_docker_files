FROM ubuntu:16.04
 
RUN apt-get update && apt-get install -y x11-apps
 
# Replace 1000 with your user / group id
ARG uid=1000
ARG gid=1000
RUN groupadd -g ${uid} tester && \
    useradd -u ${gid} -g tester -r tester && \
    mkdir /home/tester && \
    chown ${uid}:${gid} -R /home/tester
 
USER tester
WORKDIR /home/tester
