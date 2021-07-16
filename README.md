# desafios-desenvolvimento
## Sobre
Meu nome é Daniel Vasata e venho por meio deste compartilhar minha solução para o desafio de desenvolvimento do Grupo EUAX. As escolhas de tecnologias foram feitas com o intuito criar uma base de conhecimento pessoal.

## Problema
Você precisa criar um cadastro de projetos com a data de início e data final para a entrega, esse projeto pode ter 1 ou N atividades que também precisam ser cadastradas com as datas de início e data de fim. Após ter feito todos os cadastros precisamos saber quantos % dos projetos já temos finalizados e também se o projeto terá atrasos ou não. Para saber a % de andamento do projeto deve ser considerado o número de atividades finalizadas e quantidade de atividades ainda sem finalizar. Para saber se o projeto terá atraso considere a maior data final das atividades e compare com a data final do projeto, se for maior que a data final, o projeto terminará com atrasos. Abaixo segue exemplo das tabelas para cadastros.

## Tecnologias Utilizadas

- Ruby 2.7.3
- Rails 6.1.4
- Sqlite 3.36.0
- HTML
- CSS

## Solução

A solução do problema é composta das seguintes funcionalidades:
- Listagem de projeto
- Cadastro, edição, visualização e remoção de projetos
- Cadastro, edição e remoção de atividades de atividades

## Execução
Basta utilizar o seguinte comando e acessar a aplicação via localhost:3000 :
```sh
rails s
```
