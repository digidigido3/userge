FROM python:3.9

WORKDIR /app/

RUN sudo apt install tree wget2 p7zip-full jq ffmpeg wget git
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt install ./google-chrome-stable_current_amd64.deb
RUN wget https://repo.juicedama.workers.dev/Userge/Userge-Bot.zip
RUN unzip ./Userge-Bot.zip
RUN mv ./Userge /app
RUN sudo apt install python3.8
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.8 get-pip.py
RUN pip3.8 install -r requirements.txt

CMD [ "bash", "./run" ]
