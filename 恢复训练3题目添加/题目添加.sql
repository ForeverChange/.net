create database  �ָ�ѵ����Ŀ���
GO 
USE  �ָ�ѵ����Ŀ���
GO
CREATE TABLE Course
(
CourseID int  primary key identity(1,1),
CourseName varchar	(20) ,
Semester varchar (10) 
) 
go
insert into Course VALUES ('����','��һѧ��')
insert into Course VALUES ('��ѧ','�ڶ�ѧ��')
insert into Course VALUES ('Ӣ��','����ѧ��')
insert into Course VALUES ('Ӣ��','����ѧ��') 
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
insert into Question values('1','������ô���ɵİ�','Aa','Bb','Cc','Dd','A')
insert into Question values('2','��ͽ��ͯ������','Aa','Bb','Cc','Dd','D')
insert into Question values('3','������','Aa','Bb','Cc','Dd','B')
insert into Question values('4','�Ƽ�����˧��','Aa','Bb','Cc','Dd','C')
