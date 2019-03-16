/*PROCEDURE FOR SQL FINAL DRILL 1
How many copies of the book titled "The Lost Tribe" 
are owned by the library branch whose name is "Sharpstown"?*/
GO

CREATE PROC usp_cBooksIn @branch varchar(30) = 'Sharpstown', @title varchar(30) = 'The Lost Tribe'
AS
SELECT b.Title, Number_Of_Copies FROM BOOK_COPIES bc
INNER JOIN LIBRARY_BRANCH lb ON bc.BranchID = lb.BranchID
INNER JOIN BOOKS b ON bc.BookID = b.BookID 
WHERE lb.BranchName = @branch AND b.Title = @title
GO


