FROM node:18.20-alpine

# 2. Définition du répertoire de travail
WORKDIR /usr/src/app

# 3. Copie des fichiers de configuration des dépendances
# On les copie en premier pour optimiser le cache Docker
COPY package*.json ./

# 4. Installation des dépendances
RUN npm install

# 5. Copie de l'intégralité du code source
COPY . .

# 6. Exposition du port (par défaut 3000, à ajuster selon votre API)
EXPOSE 3000

# 7. Commande de lancement de l'application
CMD ["npm", "start"]
