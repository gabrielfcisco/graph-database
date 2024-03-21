# Instruções para Subir um Contêiner Neo4j e Inserir Dados

Este guia fornece instruções passo a passo para criar e iniciar um contêiner Docker do banco de dados Neo4j usando um Dockerfile e como inserir dados no banco de dados Neo4j.

## Pré-requisitos

- Docker instalado no seu sistema. Você pode baixar e instalar o Docker em [Docker Hub](https://hub.docker.com/).
- Conhecimento básico de Docker e Neo4j.

## Passo 1: Construir a Imagem do Docker

1. Clone este repositório para o seu sistema local:

```
git clone <url_do_repositório>
```

2. Navegue até o diretório do projeto:

```
cd <diretório_do_projeto>
```
3. Construa a imagem Docker usando o Dockerfile fornecido:

```
docker build -t nome_da_sua_imagem .
```

## Passo 2: Iniciar o Contêiner Neo4j

1. Após a construção da imagem, inicie um contêiner Neo4j usando a imagem que você construiu:

```
docker run --name nome_do_seu_container -d -p 7474:7474 -p 7687:7687 nome_da_sua_imagem
```

Certifique-se de substituir `nome_da_sua_imagem` pelo nome da imagem que você construiu e `nome_do_seu_container` pelo nome que deseja dar ao seu contêiner.

## Passo 3: Inserir Dados no Banco de Dados Neo4j

1. Abra o Cypher Shell para interagir com o banco de dados Neo4j. Você pode abrir o Cypher Shell executando o seguinte comando no terminal:
```
cypher-shell -u neo4j -p senha_do_neo4j
```
Substitua `senha_do_neo4j` pela senha do banco de dados Neo4j.

2. Cole os comandos Cypher fornecidos no README ou em outros recursos para inserir e relacionar os dados conforme necessário.

3. Após inserir os dados, você pode sair do Cypher Shell digitando `:exit`.

## Passo 4: Acessar o Neo4j Browser (opcional)

1. Se você preferir uma interface gráfica para interagir com o banco de dados Neo4j, pode acessar o Neo4j Browser no navegador da web.

2. Abra seu navegador da web e navegue até `http://localhost:7474`.

3. Faça login com as credenciais padrão (nome de usuário: `neo4j`, senha: a senha que você configurou durante a inicialização do contêiner ou a senha padrão `neo4j`).

4. Você pode usar o Neo4j Browser para executar consultas Cypher e visualizar dados.

## Recursos Adicionais

- [Documentação oficial do Neo4j](https://neo4j.com/docs/)
- [Docker Hub - Neo4j](https://hub.docker.com/_/neo4j)

