Exercícios usando DB Browser SQLite e base de dados disponível pela Olist na plataforma Kaggle [neste link](https://www.kaggle.com/olistbr/brazilian-ecommerce).

--selecione os dados da tabela de pagamentos onde só apareçam os tipos de pagamento “VOUCHER” e “BOLETO”.
SELECT payment_type
	FROM olist_order_payments_dataset
	WHERE payment_type = 'voucher' or payment_type = 'boleto'

--retorne os campos da tabela de produtos e calcule o volume de cada produto em um novo campo.
SELECT *,(SELECT product_height_cm * product_length_cm * product_width_cm) AS Volume 
FROM olist_products_dataset

--retorne somente os reviews que não tem comentários.
SELECT review_id, order_id, review_score, review_comment_title, review_comment_message, review_creation_date, review_answer_timestamp
FROM olist_order_reviews_dataset
WHERE review_comment_title is not NULL AND review_comment_message is not NULL;

--retorne pedidos que foram feitos somente no ano de 2017.
SELECT order_id, customer_id, order_status, order_purchase_timestamp, order_approved_at, order_delivered_carrier_date, order_delivered_customer_date, order_estimated_delivery_date
FROM olist_orders_dataset
WHERE order_approved_at > '2017-01-01 00:00:00' AND order_approved_at < '2017-12-31 23:59:59';

--encontre os clientes do estado de SP e que não morem na cidade de São Paulo.
SELECT customer_id, customer_id, customer_zip_code_prefix, customer_city, customer_state
FROM olist_customers_dataset
WHERE customer_state = 'SP' AND customer_city != 'sao paulo';
