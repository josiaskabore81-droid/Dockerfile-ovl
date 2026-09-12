FROM node:20-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /owl_bot

RUN git clone https://github.com/Ainz-devs/OWL-MD-V2.git .

RUN npm install

EXPOSE 8000

CMD ["npm", "run", "Owl"]
