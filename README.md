# DjangoApp
Django App deployed on Google cloud run

1er étape, build de l'image du conteneur:
    $ make build

2e étape, Récupération de l'ID de l'image:
    $ make get_images

3e étape:
    -> renseigner dans le makefile l'ID de l'image ainsi que le project_id GCP

4e étape: Déploiement du conteneur dans Google Cloud Run: 
    $ make deploy_GCP

    --> avant cette étape, bien s'assurer de s'être autentifié sur le SDK google:
        $ gcloud auth login
        $ gcloud auth configure-docker


Déploiement du conteneur en local: 
    $ make deploy_local 