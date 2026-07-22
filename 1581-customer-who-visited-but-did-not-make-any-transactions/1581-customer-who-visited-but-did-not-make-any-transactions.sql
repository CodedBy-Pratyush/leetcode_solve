-- Write your PostgreSQL query statement below
-- Write your PostgreSQL query statement below
with new_table as (
select visit_id,customer_id from Visits where visit_id not in (
    select visit_id from Transactions
)
)

select customer_id, count(*) as count_no_trans
from new_table
group by customer_id