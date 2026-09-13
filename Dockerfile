FROM node:20

WORKDIR /owl_bot

# Installer les dépendances système nécessaires
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Copier le projet depuis le dépôt Render
COPY . .

# Installer les dépendances Node.js
RUN npm install

# Lancer le bot
CMD ["npm", "run", "Ovl"]
