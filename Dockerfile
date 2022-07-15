FROM alpine:3.16.0

VOLUME ["/source"]
VOLUME ["/destination"]

ADD copy.sh /
RUN chmod +x /copy.sh

ARG CRON_SCHEDULE="0 5 * * *"
# create and run a cron file using env variable for the schedule
RUN echo -e "$CRON_SCHEDULE /copy.sh 2>&1\n" > /etc/copy-cron &&\
    crontab /etc/copy-cron

CMD crond -f