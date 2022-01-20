FROM debian:11
RUN apt-get update && apt-get install git python3 python3-pip -y
RUN git clone https://github.com/GamestonkTerminal/GamestonkTerminal
WORKDIR /GamestonkTerminal
RUN pip install -r requirements.txt
RUN apt-get install wget
WORKDIR /
RUN wget https://github.com/sorenisanerd/gotty/releases/download/v1.3.0/gotty_v1.3.0_linux_amd64.tar.gz
RUN tar xf gotty_v1.3.0_linux_amd64.tar.gz
RUN mv gotty GamestonkTerminal/gotty
WORKDIR /GamestonkTerminal
RUN printf '#!/bin/sh\npython3 /GamestonkTerminal/terminal.py\n' > /bin/run && chmod +x /bin/run
COPY index.html /index.html
RUN echo "API_KEY_ALPHAVANTAGE = '06TKWUY6Y059DE5D'" >> /GamestonkTerminal/gamestonk_terminal/config_terminal.py
ENTRYPOINT /GamestonkTerminal/gotty --index /index.html --title-format 'Gamestonk Terminal' -permit-write run
