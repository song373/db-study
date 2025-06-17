select *
 FROM emp
 order by ename;
 
 select *
 FROM emp
 order by deptno, sal desc;

select *
 FROM emp
 where sal >2000
 order by sal desc;
 
 select *
 FROM student
 where grade <>1
 order by birthday desc;
 