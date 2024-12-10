# docker-mongodb

- https://www.mongodb.com/resources/products/compatibilities/docker
- For mongosh info see: https://www.mongodb.com/docs/mongodb-shell/


## Docker

```sh
export MONGODB_VERSION=6.0-ubi8
# export MONGODB_VERSION=7.0-ubi8
# export MONGODB_VERSION=7.0.9-ubuntu2204

# pull image
docker pull mongodb/mongodb-community-server:$MONGODB_VERSION

# check platfor architect
docker run --rm -ti mongodb/mongodb-community-server:$MONGODB_VERSION uname -a

# run container
docker run --rm -ti -p 27017:27017 mongodb/mongodb-community-server:$MONGODB_VERSION

# list container
docker ps

# enter to container
docker exec -ti <CONTAINER-ID> bash
```

## Docker Compose

```sh
# up
docker-compose up -d

# logs
docker-compose logs -f

# down
docker-compose down
```

```sh
docker-compose exec -ti mongodb bash

$ mongosh -u user -p pass example
example>
```

## MongoDB Client

```sh
# gui
brew install --cask mongodb-compass

# cli
brew install mongosh
mongosh "mongodb://localhost:27017/example" -u user --authenticationDatabase example
```
