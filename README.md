# Awari
Exercícios e projetos realizados durante o curso intensivo pela Awari em Ciência de Dados utilizando DB Brownser(SQLite).<br/>
A base de dados utilizada foi fornecida pela empresa [Olist](https://olist.com/pt-br/ads/olist-store-geral/?utm_source=google&utm_medium=search&utm_campaign=sup_aon_conv_branding&utm_content=pd_br_all_as18-mais_src_puro&utm_term=text_text_bck3_null_vendas_acesse&gclid=EAIaIQobChMIvK-Wkent9QIVDgaRCh3uJAQ5EAAYASAAEgJCffD_BwE) na plataforma Kaggle disponível [neste link](https://www.kaggle.com/olistbr/brazilian-ecommerce).<br>

Exercises and projects carried out during the intensive course by Awari in Data Science using DB Brownser(SQLite).<br>
The database used was provided by the company [Olist](https://olist.com/pt-br/ads/olist-store-geral/?utm_source=google&utm_medium=search&utm_campaign=sup_aon_conv_branding&utm_content=pd_br_all_as18-mais_src_puro&utm_term=text_text_bck3_null_vendas_acesse&gclid=EAIaIQobChMIvK-Wkent9QIVDgaRCh3uJAQ5EAAYASAAEgJCffD_BwE) on the Kaggle platform available [in this link](https://www.kaggle.com/olistbr/brazilian-ecommerce).<br>

### Exercise class 1
1) Qual o volume de pedidos por status, agrupados pelo ano do pedido de compra? | What is the volume of orders by status, grouped by purchase order year?<br>
2) Qual o volume de pedidos por mês do ano? Faça uma limpeza para trazer os resultados pelo nome do mês por extenso e pelo valor numérico.Ex.Janeiro 8069 | What is the volume of orders per month of the year? Do a cleaning and bring the results by the month name in full and by the numerical value.Ex.January 8069<br>
3) Retorne o volume de pedidos por mês e por status, em que os meses não sejam Janeiro,Julho e Outubro,ordenados pelo mês descedente. | Return the order volume by month and by status, where the months are not January, July and October, sorted by the descending month.<br>
4) Qual o volume de pedidos que foram entregues e que a data da entrega estava dentro do estimado? Agrupe por ano e por mês de compra. | What was the volume of orders that were delivered and that the delivery date was within the estimated? Group by year and month of purchase.<br>
5) Encontre uma forma de retornar em uma úncia coluna, o mês por extenso e o ano da data de compra do pedido.Ex:Janeiro de 2018. | Find a way to return, in a single column, the month in full and the year of the purchase date of the order.Ex:January 2018.<br>
6) DESAFIO: Apresente em uma única query, qual o volume total de pedidos, o volume de pedidos entregues,
o volume total de pedidos que foram entregues dentro do previsto e o volume de pedidos que não foram entregues no tempo previsto. | CHALLENGE: Present in a single query, what is the total volume of orders, the volume of orders delivered,
the total volume of orders that were delivered on schedule and the volume of orders that were not delivered on time.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/0cc0ebaff26ae6f977512c4848f41defbc1858c2/Exercise.class.1)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/0cc0ebaff26ae6f977512c4848f41defbc1858c2/Exercise.class.1)

### Challenge 1 SQL
1) Selecione os dados da tabela de pagamentos onde só apareçam os tipos de pagamento “VOUCHER” e “BOLETO”. | Select the data from the payment table where only the payment types “VOUCHER” and “BOLETO” appear.
2) Retorne os campos da tabela de produtos e calcule o volume de cada produto em um novo campo. | Return the fields from the products table and calculate the volume of each product in a new field.
3) Retorne somente os reviews que não tem comentários. | Return only reviews that have no comments.
4) Retorne pedidos que foram feitos somente no ano de 2017. | Return orders that were only placed in the year 2017.
5) Encontre os clientes do estado de SP e que não morem na cidade de São Paulo. | Find customers from the state of SP and who do not live in the city of São Paulo.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/952d8256271167249b8f0430b80f813f0ba9a0b6/challenge1.SQL)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/952d8256271167249b8f0430b80f813f0ba9a0b6/challenge1.SQL)

### Challenge 2 SQL
1) Retorne a quantidade de itens vendidos em cada categoria por estado em que o cliente se encontra, mostrando somente categorias que tenham vendido uma quantidade de items 
acima de 1000. | Return the number of items sold in each category by state the customer is in, showing only categories that have sold a number of items
above 1000.<br>
2) Mostre os 5 clientes (customer_id) que gastaram mais dinheiro em compras, qual foi o valor total de todas as compras deles, quantidade de compras, e valor médio gasto por compras.Ordene os mesmos por ordem decrescente pela média do valor de compra. | Show the 5 customers (customer_id) who spent the most money on purchases, what was the total value of all their purchases, quantity of purchases, and average amount spent per purchases. Order them in descending order by the average purchase value.<br>
3) Mostre o valor vendido total de cada vendedor (seller_id) em cada uma das categorias de produtos, somente retornando os vendedores que nesse somatório e agrupamento venderam 
mais de $1000. Desejamos ver a categoria do produto e os vendedores. Para cada uma dessas categorias, mostre seus valores de venda de forma decrescente. | Show the total sold value of each seller (seller_id) in each of the product categories, only returning the sellers who sold in this sum and grouping over $1000. We want to see the product category and the sellers. For each of these categories, show your sales figures in descending order.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/e029c33cf684a11657ca2985b38c880c102cc31c/Challenge.2.SQL)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/e029c33cf684a11657ca2985b38c880c102cc31c/Challenge.2.SQL)
