CREATE TABLE #temporary (
    tempid int primary key,
    tempname nvarchar(50),
    
)

 

INSERT INTO #temporary (tempid, tempname)
VALUES
(1,'temp1'),
(2,'Temp2');

select * from #temporary
