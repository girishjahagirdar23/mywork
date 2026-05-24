-- Query to display Floyed trainagle
with ds as (
select level s from dual connect by level <= 4
)
select listagg(rownum,' ') within group(order by c3) from (
select rownum,a.s c2,b.s c3 from ds a,ds b
where a.s >= b.s
order by a.s,b.s)
group by c2

select * from emp;
