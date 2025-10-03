# Utiliser une image de base Python
FROM python :3.9 - slim

WORKDIR / app

# Copier le fichier des d p e n d a n c e s et les installer
COPY requirements . txt .
RUN pip install --no - cache - dir -r requirements . txt

# Copier le reste de l ’ application
COPY . .

# Exposer le port de l ’ application Flask
EXPOSE 5000

# Commande pour d m a r r e r l ’ application
CMD [ " python " , " app . py " ]