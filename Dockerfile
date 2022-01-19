FROM debian:11
RUN apt-get update && apt-get install git python3 python3-pip -y
RUN pip install --upgrade nox
RUN git clone https://github.com/cs01/pyxtermjs
RUN git clone https://github.com/GamestonkTerminal/GamestonkTerminal
WORKDIR /GamestonkTerminal
RUN pip install -r requirements.txt
WORKDIR /pyxtermjs
ENTRYPOINT nox -s run -- --host 0.0.0.0 --command python3 --cmd-args /GamestonkTerminal/terminal.py
