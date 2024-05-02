FROM   alpine:3.17.7

COPY   ansible  /ansible
COPY   files    /files
RUN    chmod +x /files/scripts/docker_cmd.sh  files/scripts/startup.sh

RUN    apk update && apk add \
       openssh=9.1_p1-r5 \ 
       sshpass=1.09-r1 \   
       curl=8.5.0-r0 \
       python3=3.10.14-r1 \
       py3-pip=22.3.1-r1 \
       make=4.3-r1 \
       git \
       py3-jsonpatch=1.32-r2 \
       py3-yaml=6.0-r0 
       
WORKDIR  /ansible 
RUN      pip install -r requirements.txt
# RUN      ansible-galaxy install -r ansible_requirements.yml

CMD    ["/files/scripts/docker_cmd.sh"]
