# gst_web

You can build and run this by doing `sudo docker build -t gst_web . && sudo docker run -it -p 8080:8080 gst_web` in a terminal, and then you can experiment with the web version at `http://localhost:8080`, or, if you want to access it from a different machine on your local network, `http://host-ip:8080`. Do note that it may take several minutes to build the Docker image, and the final image is over 1GB (it started at 2.2GB, I got it down to 1.7GB, but I'm still trying to make it smaller).

Warning: This isn't done. The image is large. It is slow to build. Not everything currently works. Feel free to play with it, but it isn't done. I expect to finish it next week at some point.

## TODO

- [X] Terminal output works
- [X] Pick a font that supports required characters (emojis, box-drawing characters, etc.) - I chose Consolas. Other ones, like Fira Code, don't usually come pre-installed on machines, so those are less ideal. Consolas is a reasonable tradeoff of looks-good, has the right Unicode characters, widely-supported, and reasonably-liked. If you have a different idea, feel free to ping me @CoconutMacaroon on Discord (I'm in the main Gamestonk Terminal Discord server).
- [ ] API keys - I can manually hard-code them into the Dockerfile, but I'd prefer that they would be more customizable, so I'm looking at using the `.env` file, but I haven't figured that out quite yet.
- [ ] Graphs - There are so many options - you can [plot them in the terminal](https://stackoverflow.com/q/37288421/), use a [web-based VNC client](https://stackoverflow.com/q/3240633/), and there are many other options. Still looking into this.
