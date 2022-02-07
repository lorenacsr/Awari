/*1) Retorne a quantidade de itens vendidos em cada categoria por estado em que o cliente se encontra, mostrando somente categorias que tenham vendido uma quantidade de items 
acima de 1000.
      Return the number of items sold in each category by state the customer is in, showing only categories that have sold a number of items
above 1000.*/

Select
  count(Produtos.product_id) Quantidade,
	Produtos.product_category_name Categoria,
	Clientes.customer_state Estado
FROM olist_customers_dataset Clientes
INNER JOIN olist_orders_dataset Pedidos on Pedidos.customer_id = Clientes.customer_id
INNER JOIN olist_order_items_dataset Itens on Itens.order_id = Pedidos.order_id 
INNER JOIN olist_products_dataset Produtos on Produtos.product_id = Itens.product_id
       group by Categoria, Estado
HAVING Quantidade > 1000
order by Estado, Quantidade DESC

/*2) Mostre os 5 clientes (customer_id) que gastaram mais dinheiro em compras, qual foi o valor total de todas as compras deles, quantidade de compras, e valor médio gasto por compras.
Ordene os mesmos por ordem decrescente pela média do valor de compra. 
      Show the 5 customers (customer_id) who spent the most money on purchases, what was the total value of all their purchases, quantity of purchases, and average amount spent per purchases.
Order them in descending order by the average purchase value. */

Select * from
	(Select
		Clientes.customer_unique_id Cliente,
		sum(Pagamentos.payment_value) Valor_Total,
		count(Pedidos.order_id) Total_Pedidos,
		avg(Pagamentos.payment_value) Valor_Medio
	FROM olist_customers_dataset Clientes
	INNER JOIN olist_orders_dataset Pedidos on Clientes.customer_id= Pedidos.customer_id
	INNER JOIN olist_order_payments_dataset Pagamentos on Pedidos.order_id = Pagamentos.order_id
	group by Cliente
	order by Valor_Total desc
	LIMIT 5) 
order by Valor_Medio DESC

/*3)Mostre o valor vendido total de cada vendedor (seller_id) em cada uma das categorias de produtos, somente retornando os vendedores que nesse somatório e agrupamento venderam 
mais de $1000. Desejamos ver a categoria do produto e os vendedores. Para cada uma dessas categorias, mostre seus valores de venda de forma decrescente.
    Show the total sold value of each seller (seller_id) in each of the product categories, only returning the sellers who sold in this sum and grouping over $1000. We want to 
see the product category and the sellers. For each of these categories, show your sales figures in descending order.*/

SELECT
Produtos.product_category_name Categoria,
		sum(Items.price) Valor_Total,
		Vendedores.seller_id Vendedor
FROM olist_sellers_dataset Vendedores
INNER JOIN olist_order_items_dataset Items on Items.seller_id = Vendedores.seller_id
INNER JOIN olist_products_dataset Produtos on Produtos.product_id = Items.product_id
GROUP by Categoria, Vendedor
HAVING Valor_Total > 1000
order by Categoria, Valor_Total DESC
