FROM node:20-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /oul_bot

COPY . .

RUN npm install

EXPOSE 8000

CMD ["npm", "run", "Ovl"]
