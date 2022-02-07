/*1)Crie uma tabela analítica de todos os itens que foram vendidos, mostrando somente pedidos interestaduais. Queremos saber quantos dias os fornecedores demoram para postar o 
produto, se o produto chegou ou não no prazo. Retorne todos os pagamentos do cliente, com suas datas de aprovação, valor da compra e o valor total que o cliente já gastou em 
todas as suas compras, mostrando somente os clientes onde o valor da compra é diferente do valor total já gasto. Retorne as categorias válidas, suas somas totais dos valores 
de vendas, um ranqueamento de maior valor para menor valor junto com o somatório acumulado dos valores pela mesma regra do ranqueamento. | Create an analytical table of all 
items that were sold, showing only interstate orders. We want to know how many days it takes suppliers to post the product, whether or not the product arrived on time. Return
all customer payments, with their approval dates, purchase amount, and the total amount the customer has already spent on all your purchases, showing only customers where the 
purchase amount is different from the total amount already spent. Return valid categories, their total sums of values of sales, a ranking from highest value to lowest value 
together with the cumulative sum of values by the same ranking rule.*/
 
SELECT *,
	CASE 
		WHEN Dias_para_entrega <= 0
			THEN 'No prazo'
		ELSE 'Atrasado'
	END Situação_entrega
FROM (SELECT 
			Items.*,
			Pedidos.*,
			Clientes.customer_state Estado_Compra,
			Vendedores.seller_state Estado_Venda,
			CAST((julianday(Pedidos.order_delivered_carrier_date) - julianday(Pedidos.order_approved_at)) as INTEGER) Dias_para_postar,
			CAST((julianday(Pedidos.order_delivered_customer_date) - julianday(Pedidos.order_estimated_delivery_date)) as INTEGER) Dias_para_entrega
		FROM olist_order_items_dataset Items
		INNER JOIN olist_orders_dataset Pedidos on Pedidos.order_id = Items.order_id
		INNER JOIN olist_customers_dataset Clientes on Clientes.customer_id	= Pedidos.customer_id
		INNER JOIN olist_sellers_dataset Vendedores on Vendedores.seller_id = Items.seller_id
		WHERE Estado_Compra <> Estado_Venda
			AND Pedidos.order_status = 'delivered')
		
/*2)Retorne todos os pagamentos do cliente, com suas datas de aprovação, valor da compra e o valor total que o cliente já gastou em todas as suas compras, mostrando somente os 
clientes onde o valor da compra é diferente do valor total já gasto. | Return all customer payments, with their approval dates, purchase amount and the total amount the customer
has already spent on all their purchases, showing only the customers where the purchase amount is different from the total amount already spent.*/

SELECT
	Clientes.customer_unique_id Cliente,
	Pagamentos.order_id Pagamento,
	Pagamentos.payment_value Valor,
	Pedidos.order_approved_at Data_Aprovação,
	sum(Pagamentos.payment_value) Valor_Total
FROM olist_customers_dataset Clientes
INNER JOIN olist_orders_dataset Pedidos on Pedidos.customer_id = Clientes.customer_id
INNER JOIN olist_order_payments_dataset Pagamentos on Pagamentos.order_id = Pedidos.order_id
GROUP by Cliente
HAVING Valor <> Valor_Total

/*3)Retorne as categorias válidas, suas somas totais dos valores de vendas, um ranqueamento de maior valor para menor valor junto com o somatório acumulado dos valores pela 
mesma regra do ranqueamento. | Return valid categories, their total sums of sales amounts, a ranking from highest to lowest value along with the cumulative sum of values by
same ranking rule.*/

SELECT
	Categoria,
	Valor_Total,
	Rank_Valor,
	sum(Valor_Total) over (order by Rank_Valor DESC) as Soma_Acumulada
FROM 
    (SELECT
			product_category_name Categoria,
			sum(Items.price) Valor_Total,
			rank () over (order by sum(Items.price)) as Rank_Valor
		FROM olist_products_dataset Produtos
		INNER JOIN olist_order_items_dataset Items on Items.product_id = Produtos.product_id
		WHERE Categoria is not NULL
		GROUP by Categoria)
order by Rank_Valor DESC
