# Utilisez une image de base Python
FROM python:3.9-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de votre application dans le conteneur
COPY . /app

# Installez les dépendances Python
RUN pip install --no-cache-dir -r https://raw.githubusercontent.com/Mishimwe/ci-cd/main/requirements.txt

# Exposez le port sur lequel l'application Flask fonctionne
EXPOSE 5000

# Commande pour exécuter l'application Flask lorsque le conteneur démarre
ENV FLASK_APP=app.py

CMD ["flask", "run", "--host", "0.0.0.0"]
