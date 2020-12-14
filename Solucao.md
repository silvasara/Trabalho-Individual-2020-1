# Conteinerização e Orquestração
A aplicação foi divida em 3 containers [Docker](https://docs.docker.com/): `api, client e database`.
O arquivo da imagem da api está em `./api/Dockerfile`, e da imagem do client está em `./client/Dockerfile`. Já para o database foi usada a imagem pública `postgres`.
Para gerenciar a comunicação entre os containers foi utilizado o [Docker Compose](https://docs.docker.com/compose/). Os serviços estão definidos no arquivo `./docker-compose.yml`.

# Como rodar
Para utilizar a aplicação utilize os seguintes comandos:
* Para construir os containers:
```
$ docker-compose build
```

* Para subir os containers:
```
$ docker-compose up
```

A aplicação poderá ser usada acessando `http://localhost:8080/`.

# Execução dos testes
Para executar os testes utilize os seguintes comandos:

* Backend:
```
$ docker exec api rake test
```

* Frontend:
```
$ docker-compose run client yarn run test:unit
```

# Integração Contínua
