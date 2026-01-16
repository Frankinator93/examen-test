# 1. Utilise l'image officielle Node.js 18 (version Alpine pour plus de légèreté)
FROM node:18-alpine

# 2. Définit le répertoire de travail dans le conteneur
WORKDIR /app

# 3. Copie uniquement les fichiers de dépendances en premier
# Cela permet de ne pas réinstaller les modules si seul le code source change
COPY package*.json ./

# 4. Installe les dépendances
RUN npm install

# 5. Copie le reste du code source du projet
COPY . .

# 6. Expose le port sur lequel l'API écoute (ex: 3000)
EXPOSE 3000

# 7. Commande pour démarrer l'application
CMD ["npm", "start"]
