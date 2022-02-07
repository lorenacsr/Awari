
/*1) Crie uma view (SELLER_STATS) para mostrar por fornecedor, a quantidade de itens enviados, o tempo médio de postagem após a aprovação da compra, a quantidade total de 
pedidos de cada Fornecedor, note que trabalharemos na mesma query com 2 granularidades diferentes. | Create a view (SELLER_STATS) to show by supplier, the quantity of items 
shipped, the average postage time after purchase approval, the total quantity of orders from each Supplier, note that we will work on the same query with 2 different 
granularities.*/

CREATE VIEW SELLER_STATS
AS
SELECT
	Fornecedor,
	count(Item) Total_Pedidos,
	avg(Dias_para_postar) Media_Tempo_Postagem
FROM (
	  SELECT
		  Fornecedores.seller_id Fornecedor,
		  Items.order_id Item,
		  CAST((julianday(Pedidos.order_delivered_carrier_date) - julianday(Pedidos.order_approved_at)) as INTEGER) Dias_para_postar
	  FROM olist_sellers_dataset Fornecedores
	  INNER JOIN olist_order_items_dataset Items on Items.seller_id = Fornecedores.seller_id
	  INNER JOIN olist_orders_dataset Pedidos on Pedidos.order_id = Items.order_id
    )
GROUP by Fornecedor
ORDER by Total_Pedidos DESC

/*2) Queremos dar um cupom de 10% do valor da última compra do cliente. Porém os clientes elegíveis a este cupom devem ter feito uma compra anterior a última (a partir da data 
de aprovação do pedido) que tenha sido maior ou igual o valor da última compra. Crie uma querie que retorne os valores dos cupons para cada um dos clientes elegíveis. | We want 
to give a coupon of 10% of the value of the customer's last purchase. However, customers eligible for this coupon must have made a purchase before the last one (from the date
order approval) that was greater than or equal to the value of the last purchase. Create a query that returns the coupon values for each of the eligible customers.*/

SELECT 
	*,
	Valor_Pago*0.1 Valor_Cupom
FROM (
  SELECT 
		*,
		lag(Valor_Pago) over (PARTITION by customer_unique_id order by order_approved_at) Valor_Anterior,
		row_number() OVER (PARTITION by customer_unique_id order by order_approved_at DESC) Ordem_Pedido
	    FROM 
        (
        SELECT 
			    Clientes.customer_unique_id,
			    Pedidos.order_id,
			    Pedidos.order_approved_at,
			    sum(Pagamentos.payment_value) as Valor_Pago,
			    count(Pedidos.order_id) over (PARTITION by Clientes.customer_unique_id) Quant_Pedidos
		    FROM olist_order_payments_dataset Pagamentos
		    INNER JOIN olist_orders_dataset Pedidos on Pedidos.order_id = Pagamentos.order_id
		    INNER JOIN olist_customers_dataset Clientes on Clientes.customer_id = Pedidos.customer_id
		    WHERE Pedidos.order_approved_at is not NULL
		    GROUP by Clientes.customer_unique_id, Pedidos.order_id, Pedidos.order_approved_at
		    ORDER by Clientes.customer_unique_id, Pedidos.order_approved_at
          ) 
        WHERE Quant_Pedidos > 1
        ) 
      WHERE Ordem_Pedido = 1 AND Valor_Anterior >= Valor_Pago
