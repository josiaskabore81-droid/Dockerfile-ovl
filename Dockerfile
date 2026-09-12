FROM node:20-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Ainz-devs/OVL-MD-V2.git /oul_bot

WORKDIR /oul_bot

RUN npm install

EXPOSE 8000

CMD ["npm", "run", "Ovl"]
