select sum(NET) as value,
'Sell' as label,
       'red' as color
       from SL_ORDER

union 

select sum(NET_AMOUNT) as value,
'Purchase' as label,
       'green' as color
from PO_ORDER
