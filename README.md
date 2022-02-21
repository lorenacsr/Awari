# Awari
Exercícios e projetos realizados durante o curso intensivo pela Awari em Ciência de Dados utilizando DB Brownser(SQLite).<br/>
A base de dados utilizada foi fornecida pela empresa [Olist](https://olist.com/pt-br/ads/olist-store-geral/?utm_source=google&utm_medium=search&utm_campaign=sup_aon_conv_branding&utm_content=pd_br_all_as18-mais_src_puro&utm_term=text_text_bck3_null_vendas_acesse&gclid=EAIaIQobChMIvK-Wkent9QIVDgaRCh3uJAQ5EAAYASAAEgJCffD_BwE) na plataforma Kaggle disponível [neste link](https://www.kaggle.com/olistbr/brazilian-ecommerce).<br>

Exercises and projects carried out during the intensive course by Awari in Data Science using DB Brownser(SQLite).<br>
The database used was provided by the company [Olist](https://olist.com/pt-br/ads/olist-store-geral/?utm_source=google&utm_medium=search&utm_campaign=sup_aon_conv_branding&utm_content=pd_br_all_as18-mais_src_puro&utm_term=text_text_bck3_null_vendas_acesse&gclid=EAIaIQobChMIvK-Wkent9QIVDgaRCh3uJAQ5EAAYASAAEgJCffD_BwE) on the Kaggle platform available [in this link](https://www.kaggle.com/olistbr/brazilian-ecommerce).<br>

### Challenge 1 SQL
1) Selecione os dados da tabela de pagamentos onde só apareçam os tipos de pagamento “VOUCHER” e “BOLETO”. | Select the data from the payment table where only the payment types “VOUCHER” and “BOLETO” appear.
2) Retorne os campos da tabela de produtos e calcule o volume de cada produto em um novo campo. | Return the fields from the products table and calculate the volume of each product in a new field.
3) Retorne somente os reviews que não tem comentários. | Return only reviews that have no comments.
4) Retorne pedidos que foram feitos somente no ano de 2017. | Return orders that were only placed in the year 2017.
5) Encontre os clientes do estado de SP e que não morem na cidade de São Paulo. | Find customers from the state of SP and who do not live in the city of São Paulo.<br>
[Respostas aqui](https://github.com/lorenacsr/Awari/blob/2449858bcb72be284d480e52dd2a8d91ae653865/challenge1.SQL)<br>
[Answers here](https://github.com/lorenacsr/Awari/blob/2449858bcb72be284d480e52dd2a8d91ae653865/challenge1.SQL)

### Challenge 2 SQL
1) Retorne a quantidade de itens vendidos em cada categoria por estado em que o cliente se encontra, mostrando somente categorias que tenham vendido uma quantidade de items 
acima de 1000. | Return the number of items sold in each category by state the customer is in, showing only categories that have sold a number of items
above 1000.<br>
2) Mostre os 5 clientes (customer_id) que gastaram mais dinheiro em compras, qual foi o valor total de todas as compras deles, quantidade de compras, e valor médio gasto por compras.Ordene os mesmos por ordem decrescente pela média do valor de compra. | Show the 5 customers (customer_id) who spent the most money on purchases, what was the total value of all their purchases, quantity of purchases, and average amount spent per purchases. Order them in descending order by the average purchase value.<br>
3) Mostre o valor vendido total de cada vendedor (seller_id) em cada uma das categorias de produtos, somente retornando os vendedores que nesse somatório e agrupamento venderam 
mais de $1000. Desejamos ver a categoria do produto e os vendedores. Para cada uma dessas categorias, mostre seus valores de venda de forma decrescente. | Show the total sold value of each seller (seller_id) in each of the product categories, only returning the sellers who sold in this sum and grouping over $1000. We want to see the product category and the sellers. For each of these categories, show your sales figures in descending order.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/e029c33cf684a11657ca2985b38c880c102cc31c/Challenge.2.SQL)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/e029c33cf684a11657ca2985b38c880c102cc31c/Challenge.2.SQL)

### Challenge 3 SQL
1) Crie uma tabela analítica de todos os itens que foram vendidos, mostrando somente pedidos interestaduais. Queremos saber quantos dias os fornecedores demoram para postar o 
produto, se o produto chegou ou não no prazo. Retorne todos os pagamentos do cliente, com suas datas de aprovação, valor da compra e o valor total que o cliente já gastou em 
todas as suas compras, mostrando somente os clientes onde o valor da compra é diferente do valor total já gasto. Retorne as categorias válidas, suas somas totais dos valores 
de vendas, um ranqueamento de maior valor para menor valor junto com o somatório acumulado dos valores pela mesma regra do ranqueamento. | Create an analytical table of all 
items that were sold, showing only interstate orders. We want to know how many days it takes suppliers to post the product, whether or not the product arrived on time. Return
all customer payments, with their approval dates, purchase amount, and the total amount the customer has already spent on all your purchases, showing only customers where the 
purchase amount is different from the total amount already spent. Return valid categories, their total sums of values of sales, a ranking from highest value to lowest value 
together with the cumulative sum of values by the same ranking rule.<br>
2) Retorne todos os pagamentos do cliente, com suas datas de aprovação, valor da compra e o valor total que o cliente já gastou em todas as suas compras, mostrando somente os 
clientes onde o valor da compra é diferente do valor total já gasto. | Return all customer payments, with their approval dates, purchase amount and the total amount the customer
has already spent on all their purchases, showing only the customers where the purchase amount is different from the total amount already spent.<br>
3) Retorne as categorias válidas, suas somas totais dos valores de vendas, um ranqueamento de maior valor para menor valor junto com o somatório acumulado dos valores pela 
mesma regra do ranqueamento. | Return valid categories, their total sums of sales amounts, a ranking from highest to lowest value along with the cumulative sum of values by
same ranking rule.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/a014002707c6542ac4a89e072adf1517c4e6134d/Challenge.3.SQL)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/a014002707c6542ac4a89e072adf1517c4e6134d/Challenge.3.SQL)

### Challenge 4 SQL
1) Crie uma view (SELLER_STATS) para mostrar por fornecedor, a quantidade de itens enviados, o tempo médio de postagem após a aprovação da compra, a quantidade total de 
pedidos de cada Fornecedor, note que trabalharemos na mesma query com 2 granularidades diferentes. | Create a view (SELLER_STATS) to show by supplier, the quantity of items 
shipped, the average postage time after purchase approval, the total quantity of orders from each Supplier, note that we will work on the same query with 2 different 
granularities.<br>
2) Queremos dar um cupom de 10% do valor da última compra do cliente. Porém os clientes elegíveis a este cupom devem ter feito uma compra anterior a última (a partir da data 
de aprovação do pedido) que tenha sido maior ou igual o valor da última compra. Crie uma querie que retorne os valores dos cupons para cada um dos clientes elegíveis. | We want 
to give a coupon of 10% of the value of the customer's last purchase. However, customers eligible for this coupon must have made a purchase before the last one (from the date
order approval) that was greater than or equal to the value of the last purchase. Create a query that returns the coupon values for each of the eligible customers.<br>
[Respostas aqui](https://github.com/mdjlr21/Awari/blob/a7dd4938ac96ce7a416058e3e159c05d26edded1/challenge.4.sql)<br>
[Answers here](https://github.com/mdjlr21/Awari/blob/a7dd4938ac96ce7a416058e3e159c05d26edded1/challenge.4.sql)

### Challenge 5 SQL
1) Crie os índices apropriadaos para as atbelas do nosso modelo de dados com o intuito de melhorar a performance. | Create the appropriate indexes for the tables of our data model in order to improve performance.<br>
[Respostas aqui](https://github.com/lorenacsr/Awari/blob/a183d83b55c5e3be2b558abbc3458a6ed628da6a/challenge.5.sql)<br>
[Answers here](https://github.com/lorenacsr/Awari/blob/a183d83b55c5e3be2b558abbc3458a6ed628da6a/challenge.5.sql)<br>
