# Notebook-API

RESTFULL API DESENVOLVIDA COM RAILS

## Dependências

> Rails => 5.0.1\
> Ruby => 2.4.0

## Criando Ambiente de Desenvolvimento
> rails db:migrate
> rails dev:setup

rails dev:setup devera ter uma saia como esta:
>Criando Usuarios...\
Criando Usuarios...[OK]\
Criando Telefones...\
Criando Telefones...[OK]\
Criando Endereços...\
Criando Telefones...[OK]\

## Rotas
É possível conseguir todas as rotas da aplicação usando o seguinte endereço:
> http://localhost:3000/rails/info/routes

Onde o localhost:3000 sera substituído pelo IP e Porta onde a aplicação estar rodando. 

## Segurança
os arquivo de configuração de segurança esta em:
> config/initializers/rack_attack.rb

## Header

Todas as requisições necessitam de cabeçalhos para funcionarem.

> GET => Accept = "application/vnd.api+json"\
> POST => Accept = "application/vnd.api+json" e Media-Type = "application/vnd.api+json"\
