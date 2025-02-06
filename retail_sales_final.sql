SELECT 
	id_sale, 
	sale_date, 
	product, 
	category, 
	unit_price, 
	quantity, 
	discount, 
	total_sales, 
	profit, 
	customer, 
	location,
	round(profit / total_sales *100, 2) as profit_margin,			-- PROFIT MARGIN (%)
	round(unit_price * (1 - discount / 100)) as discounted_price	-- DISCOUNTED PRICE
FROM public.retail_sales_large
order by sale_date;