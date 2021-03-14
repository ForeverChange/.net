create database  恢复训练题目添加
GO 
USE  恢复训练题目添加
GO
CREATE TABLE Course
(
CourseID int  primary key identity(1,1),
CourseName varchar	(20) ,
Semester varchar (10) 
) 
go
insert into Course VALUES ('语文','第一学期')
insert into Course VALUES ('数学','第二学期')
insert into Course VALUES ('英语','第三学期')
insert into Course VALUES ('英语','第四学期') 
CREATE TABLE Question
(
QuestionID int   primary key identity(1,1) ,
CourseID int  references Course (CourseID),
Title varchar (200)  ,  
OptionA  varchar (40) ,
OptionB  varchar (40) ,
OptionC  varchar (40) ,
OptionD  varchar (40) ,
Answer char  
)
GO
insert into Question values('1','钢铁怎么练成的啊','Aa','Bb','Cc','Dd','A')
insert into Question values('2','安徒生童话故事','Aa','Bb','Cc','Dd','D')
insert into Question values('3','林艺鑫','Aa','Bb','Cc','Dd','B')
insert into Question values('4','唐佳文是帅哥','Aa','Bb','Cc','Dd','C')
