# Utilisez une image de base Python
FROM python:3.9-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de votre application dans le conteneur
COPY . /app

# Installez les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'application Flask fonctionne
EXPOSE 5000

# Commande pour exécuter l'application Flask lorsque le conteneur démarre
CMD ["python", "app.py"]