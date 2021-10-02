image_id = 
project_id=
service_name= djangoapp

build:
	docker-compose build

get_images:
	sudo docker images

deploy_GCP:
	sudo docker tag $(image_id) gcr.io/$(project_id)/$(service_name)
	sudo docker push gcr.io/$(project_id)/$(service_name)
	gcloud run deploy --image=gcr.io/$(project_id)/$(service_name) --platform managed

deploy_local:
	docker-compose up -d

	