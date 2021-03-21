FROM python:3.9

WORKDIR /app/

RUN chmod +x Userge-Bot.sh
RUN bash Userge-Bot.sh

CMD [ "bash", "./run" ]
