/*Crie os índices apropriadaos para as atbelas do nosso modelo de dados com o intuito de melhorar a performance.*\

CREATE INDEX customer on olist_customers_dataset (customer_id,customer_unique_id,customer_zip_code_prefix,customer_city,customer_state);
CREATE INDEX id on olist_customers_dataset (customer_id);
CREATE INDEX geolocation on olist_geolocation_dataset (geolocation_city,geolocation_lat,geolocation_lng,geolocation_state,geolocation_zip_code_prefix);
CREATE INDEX items on olist_order_items_dataset (order_id,order_item_id,product_id,seller_id,shipping_limit_date,price,freight_value);
CREATE INDEX payments on olist_order_payments_dataset (order_id, payment_sequential, payment_type, payment_installments, payment_value);
CREATE INDEX reviews on olist_order_reviews_dataset (review_id,order_id,review_comment_title,review_comment_message,review_creation_date,review_answer_timestamp);
CREATE INDEX orders on olist_orders_dataset (order_id,customer_id,order_status,order_purchase_timestamp,order_approved_at,order_delivered_carrier_date,order_delivered_customer_date,order_estimated_delivery_date);
CREATE INDEX products on olist_products_dataset (product_id,product_category_name,product_name_lenght,product_description_lenght,product_photos_qty,product_weight_g,product_length_cm,product_height_cm,product_width_cm);
CREATE INDEX sellers on olist_sellers_dataset (seller_id,seller_zip_code_prefix,seller_city,seller_state);
CREATE INDEX translation on product_category_name_translation (product_category_name,product_category_name_english);
