select 
	oo.number,
	date(oo.requested_time) as requested_delivery_date,
	oo.status,
	oo.subtotal,
	oo.store_id,
	ss.name
from orders_order oo
left join stores_store ss 
	on oo.store_id = ss.id 
where 	oo.merchant_id = 587 and status = 20 and subtotal >= 2500 and requested_time between '2024-05-01' and '2024-05-22'
order by requested_delivery_date desc 