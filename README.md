## A simple dockerfile to deploy an express application in a docker container.

To build a image tagged as "node-app-image" from the Dockerfile, execute:
>docker build -t node-app-image .

---

To start a container from the image created in previous step:
>docker run -d -v $(pwd):/app:ro -v /app/node_modules --env-file ./.env -p 3000:3000 --name node-app node-app-image

***
The commands mentioned above can also be implemented using a docker-compose.yml file, which makes the overall execution easier.

To bring up the container application, which we have described in our docker-compose file:
>docker-compose up -d

To Stop and remove containers, networks, images, and volumes:
>docker-compose down



