/* COMMENT ON TABLE ACCOUNTGROUP IS 'Test' */


/* Following SQL adapted from http://www.firebirdfaq.org/faq174/ */
select rdb$relation_name, 'COMMENT ON TABLE '||TRIM(rdb$relation_name)||' IS ''X'' ; ' 
from rdb$relations
where rdb$view_blr is null 
and (rdb$system_flag is null or rdb$system_flag = 0)
order by 1 asc

/* COMMENT ON COLUMN ACCOUNTGROUP.ID IS 'Blah blah TEST' */
select f.rdb$relation_name, f.rdb$field_name, 'COMMENT ON COLUMN '||TRIM(f.rdb$relation_name)||'.'||TRIM(f.rdb$field_name)||' ''X'' ; ' as cmt
from rdb$relation_fields f
join rdb$relations r on f.rdb$relation_name = r.rdb$relation_name
and r.rdb$view_blr is null 
and (r.rdb$system_flag is null or r.rdb$system_flag = 0)
order by 1, f.rdb$field_position