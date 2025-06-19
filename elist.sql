### **1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years?
--count order id, SUM(usd_price), AVG(usd_price) 
--join orders, customers, and geolookup
--filter region = "NA"  and where lower(product_name) like %macbook% 
--by quarter

select date_trunc(orders.purchase_ts, quarter) as purchase_quarter, 
  count(distinct orders.id) as order_count, 
  round(sum(orders.usd_price),2) as total_sales, 
  round(avg(orders.usd_price),2) as aov
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on customers.country_code = geo_lookup.country
where region = "NA"  
  and lower(orders.product_name) like "%macbook%"
group by 1
order by 1 desc;

### **2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver?
--select region, date_diff(delivery_ts, purchase_ts, day)
--join order_status, orders, customers, geo_lookup
--where extract (year from orders.purchase_ts) = 2022 for purchase_platform website or any year for mobile
--group by region
--order by time to deliver

select geo_lookup.region, 
  round(avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)),3) as avg_days_to_deliver
from core.order_status
left join core.orders
  on order_status.order_id = orders.id
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on customers.country_code = geo_lookup.country
where (extract (year from orders.purchase_ts) = 2022 and purchase_platform = 'website') or purchase_platform = 'mobile app'
group by 1
order by 2 desc;

### **3) What was the refund rate and refund count for each product overall?
--select product_name, count refund_ts, count refund_ts/count purchase_ts
--from order_status, orders
--group by product_name

select case when orders.product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else orders.product_name end as product_clean, 
  count(order_status.refund_ts) as refund_count, 
  round(count(order_status.refund_ts)/count(order_status.purchase_ts), 2) as refund_rate
from core.order_status
left join core.orders
  on order_status.order_id = orders.id
group by 1
order by 3 desc;

### **4)Within each region, what is the most popular product?
--select region, product name, count distinct orders.id
--join orders table, customers, and geo_lookup
--group by 1, 2
--rank orders by each region
--filter for top ranking

with sales_by_product as (
  select geo_lookup.region, 
  case when orders.product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else orders.product_name end as product_clean, 
  count(distinct orders.id) as total_orders
  from core.orders
  left join core.customers
    on orders.customer_id = customers.id
  left join core.geo_lookup
    on customers.country_code = geo_lookup.country
  group by 1, 2),

ranked_orders as (
  select *, 
  rank () over (partition by region order by total_orders desc) as order_ranking 
  from sales_by_product)

select *
from ranked_orders 
where order_ranking = 1;

### **5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers?
--select customers.loyalty_program, date_diff(orders.purchase_ts, purschase_ts, customers.created_on, day), date_diff(orders.purchase_ts, purschase_ts, customers.created_on, month)
-- join customers and order_status
-- group by 1

select case when customers.loyalty_program = 1 then 'loyalty' else 'non-loyalty' end as loyalty_program_status, 
  round(avg(date_diff(orders.purchase_ts, customers.created_on, day)),1) as days_to_purchase_days,
  round(avg(date_diff(orders.purchase_ts, customers.created_on, month)),1) as months_to_purchase_days
from core.customers 
  left join core.orders
  on customers.id = orders.customer_id
group by 1;
