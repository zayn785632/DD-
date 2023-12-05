select count(*) my_value,(select a.item_name from item_mst a where a.id=SL_ORDER_DTL.item_name) item_name
from SL_ORDER_DTL 
group by item_name
Order by 1 desc
