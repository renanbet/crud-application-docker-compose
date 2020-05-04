# medical-procedures-compose
Aplicação que cria o ambiente em docker das aplicações:
- server: https://github.com/renanbet/medical-procedures-server
- client: https://github.com/renanbet/medical-procedures-client

## Pré-requisitos

- git
- docker
- docker-compose


## Ambiente linux

- Clonar o repositório
```
git clone https://github.com/renanbet/medical-procedures-compose.git
git checkout master
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

## Parar aplicações

```
sudo make down
```
ou
```
docker-compose down
```
