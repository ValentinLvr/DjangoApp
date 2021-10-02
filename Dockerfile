#image de base python v3.7
FROM python:3.8

# on se place dans le répertoire /poc 
WORKDIR /POC

# variables d'environement
ENV PORT 8080

#installation des dépendances 
ADD requirements.txt .
RUN pip install -r requirements.txt

#ajout du code source de l'app web
COPY . .

#On lance l'app
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8080" ]
