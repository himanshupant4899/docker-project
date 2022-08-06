## A simple dockerfile to deploy an express application in a docker container.

To build a image tagged as "node-app-image" from the Dockerfile, execute:
>docker build -t node-app-image .

***

To start a container from the image created in previous step:
>docker run -d -v $(pwd):/app:ro -v /app/node_modules --env-file ./.env -p 3000:3000 --name node-app node-app-image



