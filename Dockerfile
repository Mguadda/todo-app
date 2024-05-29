# Utiliser l'image de base node:12-alpine
FROM node:12-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier le contenu du répertoire local dans le répertoire de travail de l'image
COPY . .

# Installer les dépendances en mode production
RUN yarn install --production

# Exécuter l'application
CMD ["node", "/app/src/index.js"]
