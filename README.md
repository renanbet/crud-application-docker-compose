# medical-procedures-compose

## Pré-requisitos

- git
- docker
- docker compose


## Ambiente linux

- Clonar o repositório
```
git clone https://github.com/renanbet/medical-procedures-compose.git
```


- Configurar os valores de ambiente no arquivo config.env
```
config.env
```

- Rodar o script initdb.sql nos bancos do app e teste
```
initdb.sql
```

- Atribuir permissão de execução para o cli.sh
```
chmod 777 cli.sh
```

- Instalar o client e server
```
./cli.sh setup
```

- Subir os ambientes
```
sudo make up
```
ou
```
sudo docker-compose up -d
```

## Acessar a aplicação

```
http://localhost:8080
```
- login: admin - senha: admin

- login: user - senha: user


## Logs

- Para ver todos os logs
```
sudo make logs
```
ou
```
sudo docker-compose logs -f
```

## Logs de testes

- client
```
sudo docker-compose logs -f medical-procedures-clienttest
```

- server
```
sudo docker-compose logs -f medical-procedures-apitest
```

## Desligar aplicações

```
sudo make down
```
ou
```
docker-compose down
```
