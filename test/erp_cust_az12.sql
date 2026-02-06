select * ,
case 
   when cid like 'NAS%' then SUBSTRING(cid,4,len(cid))
   else cid
   end as cid,
   case 
     when bdate > getdate() then null
	 else bdate
	 end as bdate,
	 case
	 when upper(trim(gen)) in ('M','MALE') then 'Male'
	 when upper(trim(gen)) in ('F','FEMALE') then 'FEMale'
	 else 'n/a'
	 end as gen
from bronze.erp_cust_az12
