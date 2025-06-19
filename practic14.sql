select * from student;
select * from score;
select * from hakjum;

select st.studno 학번, st.name 이름, sc.total 점수, hj.grade 학점
from student st, score sc, hakjum hj
where
    st.studno = sc.studno
    and sc.total between hj.min_point and hj.max_point; 
 
 
    
select st.studno 학번, st.name 이름, sc.total 점수, hj.grade 학점
from student st, score sc, hakjum hj
where
    st.studno = sc.studno
    and sc.total between hj.min_point and hj.max_point
    and st.deptno1 in (101,102);
    
    
    
select s.name, s.grade, p.name, p.deptno, d.dname
from student s, professor p, department d
where
    s.profno = p.profno
    and p.deptno !=301
    and p.deptno = d.deptno;


