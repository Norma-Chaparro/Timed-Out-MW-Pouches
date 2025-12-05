--select stock_tm_id, pss_task_line_state, t.location, t.loc_update_time,order_id, pick_state, p.du_id, pss.destination from x_pick p 
--join x_tm t on p.stock_tm_id=t.tm_id 
--join x_pss_task_line ps on t.tm_id =ps.tm_id
--left join x_pss_task pss
--on ps.pss_task_id =pss.pss_task_id
----where rqst_pss_location LIKE ('BF%')
--AND destination LIKE ('MW%')
--and pss_task_line_state IN ('RQST TMO', 'EXTRACTING') order by 3 desc


select stock_tm_id, t.location, PS.state_change_time
from x_pick p 
join x_tm t on p.stock_tm_id=t.tm_id 
join x_pss_task_line ps on t.tm_id =ps.tm_id
left join x_pss_task pss
on ps.pss_task_id =pss.pss_task_id
where rqst_pss_location LIKE ('BF%')
AND destination LIKE ('MW%')
and pss_task_line_state IN ('RQST TMO', 'EXTRACTING')
--and order_id not like '100%'
--and order_id not like '6100%'
order by 3 asc
