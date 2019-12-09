select *
from
(select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu2 as t1v1,  qview1.stringu1 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu2 as t2v1,  qview2.stringu1
as t2v2 from
t7_1m qview1,
t8_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu2 as t1v1,  qview1.stringu1 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.string4
as t2v2 from
t7_1m qview1,
t5_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu2 as t1v1,  qview1.stringu1 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.stringu2
as t2v2 from
t7_1m qview1,
t2_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.string4 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu2 as t2v1,  qview2.stringu1
as t2v2 from
t4_1m qview1,
t8_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.string4 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.string4
as t2v2 from
t4_1m qview1,
t5_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.string4 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.stringu2
as t2v2 from
t4_1m qview1,
t2_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.stringu2 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu2 as t2v1,  qview2.stringu1
as t2v2 from
t1_1m qview1,
t8_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.stringu2 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.string4
as t2v2 from
t1_1m qview1,
t5_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview1.evenonepercent as t1v0,  qview1.stringu1 as t1v1,  qview1.stringu2 as t1v2,  qview2.evenonepercent as t2v0,  qview2.stringu1 as t2v1,  qview2.stringu2
as t2v2 from
t1_1m qview1,
t2_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
) f_1, (select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu2 as t3v1,  qview2.stringu1
as t3v2 from
t7_1m qview1,
t9_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.string4
as t3v2 from
t7_1m qview1,
t6_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.stringu2
as t3v2 from
t7_1m qview1,
t3_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu2 as t3v1,  qview2.stringu1
as t3v2 from
t4_1m qview1,
t9_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.string4
as t3v2 from
t4_1m qview1,
t6_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.stringu2
as t3v2 from
t4_1m qview1,
t3_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu1 is not null and
qview1.string4 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu2 as t3v1,  qview2.stringu1
as t3v2 from
t1_1m qview1,
t9_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.string4
as t3v2 from
t1_1m qview1,
t6_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu1 is not null and
qview2.string4 is not null
union
select qview1.unique2 as t0v0,  qview2.evenonepercent as t3v0,  qview2.stringu1 as t3v1,  qview2.stringu2
as t3v2 from
t1_1m qview1,
t3_1m qview2
where
((qview1.onepercent >= 0) and (qview1.onepercent < 20)) and
qview1.evenonepercent is not null and
qview1.stringu2 is not null and
qview1.stringu1 is not null and
qview1.unique2 is not null and
(qview1.unique2 = qview2.unique2) and
((qview2.onepercent >= 15) and (qview2.onepercent < 35)) and
qview2.evenonepercent is not null and
qview2.stringu2 is not null and
qview2.stringu1 is not null
) f_2 where f_1.t0v0=f_2.t0v0
;
