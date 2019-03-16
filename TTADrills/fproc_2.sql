/*PROCEDURE FOR SQL FINAL DRILL 2
How many copies of the book titled "The Lost Tribe" 
are owned by each library branch?*/ 
GO

CREATE PROC usp_bookByBranch @title varchar(30) = 'The Lost Tribe'
AS
SELECT b.Title, Number_Of_Copies AS 'Copies', lb.BranchName AS 'Branch' FROM BOOK_COPIES bc
INNER JOIN LIBRARY_BRANCH lb ON bc.BranchID = lb.BranchID
INNER JOIN BOOKS b ON bc.BookID = b.BookID 
WHERE b.Title = @title
GO

