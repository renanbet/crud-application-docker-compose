# Medical procedures compose

Docker applciation to build and up:
- server: https://github.com/renanbet/medical-procedures-server
- client: https://github.com/renanbet/medical-procedures-client

## Requirements

- git
- docker
- docker-compose 3.7


## Linux enviroment

- Clone the repository
```
git clone https://github.com/renanbet/medical-procedures-compose.git
git checkout master
```


- Set the enviroment variables on
```
config.env
```

- Run initdb.sql script on db
```
initdb.sql
```

- Add execution permission on cli.sh
```
chmod +x cli.sh
```

- Install the client and server
```
./cli.sh setup
```

- Up services
```
make up
```
or
```
docker-compose up -d
```

- Service build (not necessary on first time of compose up)
```
make build
```
or
```
docker-compose build --no-cache
```

## Access application 

```
http://localhost:8080
```
- login: admin - password: admin

- login: user - password: user


## Logs

- Show Logs
```
make logs
```
or
```
docker-compose logs -f
```

## Stop services

```
make down
```
or
```
docker-compose down
```

## Tests
```
cd tests
make up
make logs
```
