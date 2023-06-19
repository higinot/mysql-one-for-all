# Projeto de Manipulação de Tabelas em MySQL

Este repositório contém uma coleção de exercícios de manipulação de tabelas em MySQL. Os exercícios foram projetados para ajudar a praticar e aprimorar as habilidades de manipulação de dados em um banco de dados relacional.

# MySQL

_SQL (Structured Query Language) é a linguagem mais usada para criar, pesquisar, extrair e também manipular dados dentro de um banco de dados relacional. Para que isso seja possível, existem comandos como o SELECT, UPDATE, DELETE, INSERT e WHERE, entre outros, que você aprenderá ao longo do curso._

> Todos os conceitos apresentados para se operar as informações em um banco de dados podem ser resumidos pelo conceito de CRUD.

- Adicionar novas informações ao banco de dados, utilizamos o conceito CREATE com o comando:
``INSERT INTO banco.tabela (coluna1, coluna2) VALUES (‘valor_A’, ‘valor_B’);``
- Obter as informações armazenadas no bando de dados, utilizamos o conceito READ, com o comando: ``SELECT colunaA, colunaB FROM banco.tabela;``
- Atualizar informações existentes no banco de dados, utilizamos o conceito UPDATE com o comando: ``UPDATE banco.tabela SET coluna1='valor' WHERE alguma_condicao;``
- Remover informações existentes no banco de dados, utilizamos o conceito DELETE com o comando: ``DELETE FROM banco.tabela WHERE alguma_condicao;``

## Desafios
1. Exiba apenas os nomes dos produtos na tabela products. 
2. Exiba os dados de todas as colunas da tabela products.
3. Escreva uma query que exiba os valores da coluna que representa a primary key da tabela products.
4. Conte quantos registros existem na coluna product_name da tabela products.
5. Monte uma query que exiba os dados da tabela products a partir do quarto registro até o décimo terceiro.
6. Exiba os dados das colunas product_name e id da tabela products de maneira que os resultados estejam em ordem alfabética dos nomes.
7. Mostre apenas os ids dos 5 últimos registros da tabela products (a ordernação deve ser baseada na coluna id).
8. Faça uma consulta que retorne três colunas, respectivamente, com os nomes 'A', 'Trybe' e 'eh', e com valores referentes a soma de '5 + 6', a string 'de', a soma de '2 + 8'.
9. Mostre o supplier_id das purchase_orders em que o supplier_id seja 1 ou 3.
10. Mostre todos os valores de notes da tabela purchase_orders que não são nulos.
11. Mostre todos os dados da tabela purchase_orders em ordem decrescente, ordenados por created_by em que o created_by é maior ou igual a 3.
12. Exiba os dados da coluna notes da tabela purchase_orders em que seu valor de Purchase generated based on Order é maior ou igual a 30 e menor ou igual a 39.
13. Mostre as submitted_date de purchase_orders em que a submitted_date é do dia 26 de abril de 2006.
14. Mostre o supplier_id das purchase_orders em que o supplier_id seja 1 ou 3.
15. Mostre os resultados da coluna supplier_id da tabela purchase_orders em que o supplier_id seja maior ou igual a 1 e menor ou igual 3.
16. Mostre somente as horas (sem os minutos e os segundos) da coluna submitted_date de todos registros da tabela purchase_orders.
17. Exiba a submitted_date das purchase_orders que estão entre 2006-01-26 00:00:00 e 2006-03-31 23:59:59.
18. Mostre os registros das colunas id e supplier_id das purchase_orders em que os supplier_id sejam tanto 1, ou 3, ou 5, ou 
19. Mostre todos os registros de purchase_orders que tem o supplier_id igual a 3 e status_id igual a 2.
21. Mostre a quantidade de pedidos que foram feitos na tabela orders pelo employee_id igual a 5 ou 6, e que foram enviados através do método(coluna) shipper_id igual a 2.
22. Adicione à tabela order_details um registro com order_id: 69, product_id: 80, quantity: 15.0000, unit_price: 15.0000, discount: 0, status_id: 2, date_allocated: NULL, purchase_order_id: NULL e inventory_id: 129.
23. Adicione com um único INSERT, duas linhas à tabela order_details com os mesmos dados do requisito 20.
24. Atualize todos os dados de discount do order_details para 15.
25. Atualize os dados da coluna discount da tabela order_details para 30, onde o valor na coluna unit_price seja menor que 10.0000.
26. Atualize os dados da coluna discount da tabela order_details para 45, onde o valor na coluna unit_price seja maior que 10.0000 e o id seja um número entre 30 e 40.
27. Delete todos os dados em que a unit_price da tabela order_details seja menor que 10.0000.
28. Delete todos os dados em que a unit_price da tabela order_details seja maior que 10.0000.
29. Delete todos os dados da tabela order_details.

### Para utilizar o MySQL em Docker

``docker container run --name container-mysql -e MYSQL_ROOT_PASSWORD=senha-mysql -d -p 3306:3306 mysql:8.0.31``

Rodar terminal do Docker ``docker exec -it container-mysql bash``

Terminal do MYSQL no Docker
``mysql -u root -p``

### Contato
Se tiver alguma dúvida ou consulta, entre em contato com Higino Neto por e-mail em engprodhigino@gmail.com.
