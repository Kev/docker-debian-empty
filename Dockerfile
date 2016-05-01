FROM debian:8
MAINTAINER git@kismith.co.uk

EXPOSE 80

CMD /init.sh && /run.sh

RUN apt-get update && apt-get install -y supervisor procps nginx php5-common php5-cli php5-fpm php5-mysql rsyslog mysql-client curl git

ADD init.sh /init.sh
ADD run.sh /run.sh

RUN chmod u+rwx /init.sh /run.sh
