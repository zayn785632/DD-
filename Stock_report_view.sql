  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ITEM_STK" ("ITEM_NO", "ITEM_NAME", "PUR_QTY", "SALE_QTY", "STOCK") AS 
  select 
ID,
item_name,
(select sum(nvl(a.qty,0)) from PO_DTL a where a.item_name=item_mst.ID) pur_qty,
(select sum(nvl(b.qty,0)) from SL_ORDER_DTL b where b.ITEM_NAME=item_mst.ID) sale_qty,
NVL((select sum(nvl(a.qty,0)) from PO_DTL a where a.item_name=item_mst.ID),0)-NVL((select sum(nvl(b.qty,0)) from SL_ORDER_DTL b where b.ITEM_NAME=item_mst.ID),0) CURRENT_STK
from item_mst;
