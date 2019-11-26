FROM ubuntu:bionic

RUN set -ex; \
  apt update && \
  apt install -y ffmpeg motion && \ 
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/* && \
  rm -Rf /usr/share/doc && \
  rm -Rf /usr/share/man

ADD motion.conf /etc/motion/motion.conf
ADD thread1.conf /etc/motion/thread1.conf
ADD thread2.conf /etc/motion/thread2.conf
ADD run.sh /etc/motion/run.sh
ADD clean_up.sh /etc/motion/clean_up.sh

ENV CAM_USER=""
ENV CAM_PASS=""

EXPOSE 8080 8081 8082

CMD ["bash", "-C", "/etc/motion/run.sh"]
