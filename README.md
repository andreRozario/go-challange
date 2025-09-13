# Desafio Curso Full Cycle 3.0

Criar uma imagem do docker capaz de criar um executável de go e que tenha menos de 2MB.

A abordagem que eu utilizei foi:

- Usar a imagem golang:1.23-bookworm para criar a imagem de base;
- Usar o multi-stage build para começar um novo stage do build que executará o arquivo gerado.

## Como executar?

- Faça o build o projeto usando:

```bash
  docker build -t andrerozario/fullcycle .
```

- Execute a imagem gerada:

```bash
  docker run -it andrerozario/fullcycle:latest
```

## Imagem no Dockerhub:
[andrerozario/fullcycle](https://hub.docker.com/r/andrerozario/fullcycle/tags)
