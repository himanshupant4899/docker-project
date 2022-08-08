## Using multiple docker-compose files in a project.

The `docker-compose.yml` contains the configurations that are common to both "development" and "production" environment. 

---

The `docker-compose.dev.yml` contains the configurations that are just specific to "development" environment and can also be used to override the configurations mentioned in the base `docker-compose.yml`.
>docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

---

To Stop and remove containers, networks, images, and volumes:
>docker-compose -f docker-compose.yml -f docker-compose.dev.yml down -v

***
***

The `docker-compose.prod.yml` contains the configurations that are just specific to "production" environment and can also be used to override the configurations mentioned in the base `docker-compose.yml` 
>docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

---

To Stop and remove containers, networks, images, and volumes:
>docker-compose -f docker-compose.yml -f docker-compose.prod.yml down -d



