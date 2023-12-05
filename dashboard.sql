declare
x number;
y number;
z number;
b number;
s number;
g number;

   l_result clob;
begin
select count(*) INTO x from BRAND;
select count(*) INTO y from CATEGORY;
select count(*) INTO z from PO_DTL;
select count(*) INTO b from item_mst;
select count(*) INTO g from SL_ORDER_DTL;
 


l_result:= l_result;


 htp.p('<div class="card-list">
        <a href="#" class="card-item">
            <img src="https://cdn-icons-png.flaticon.com/512/5359/5359968.png">
            <p>Total Brand</p>
            <h3>'||x||'</h3>

            

        </a>
       <a href="#" class="card-item">
            <img src="https://cdn-icons-png.flaticon.com/512/202/202477.png" alt="Card Image">
            <p>Total Category</p>
            <h3>'||y||'</h3>



        </a>
        <a href="#" class="card-item">
            <img src="https://cdn-icons-png.flaticon.com/512/3050/3050158.png" alt="Card Image">
            <p>Total Item</p>
            <h3>'||b||'</h3>


        </a>
         <a href="#" class="card-item">
            <img src="https://cdn-icons-png.flaticon.com/512/10112/10112452.png" alt="Card Image">
            <p>Total Purchase</p>
            <h3>'||z||'</h3>


        </a>
          <a href="#" class="card-item">
            <img src="https://cdn-icons-png.flaticon.com/512/7298/7298311.png" alt="Card Image">
            <p>Total Sell</p>
            <h3>'||g||'</h3>


        </a>    
        ');

l_result := l_result ;
 apex_util.prn(l_result, false);
return l_result;


end;
