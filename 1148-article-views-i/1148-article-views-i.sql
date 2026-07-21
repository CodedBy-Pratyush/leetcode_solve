# Write your MySQL query statement below
select  distinct(author_id)  as id  from Views 
where Viewer_id=author_id
 order by id asc;