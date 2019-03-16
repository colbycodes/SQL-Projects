/*PROCEDURE FOR SQL FINAL DRILL 4
For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 
today, retrieve the book title, the borrower's name, and the borrower's address.*/
GO

CREATE PROC usp_dueTodayS
AS
SELECT Title, bo.Name, bo.Address FROM BOOKS b
INNER JOIN BOOK_LOANS bl ON b.BookID = bl.BookID
INNER JOIN LIBRARY_BRANCH lb on bl.BranchID = lb.BranchID
INNER JOIN BORROWER bo on bl.CardNo = bo.CardNo
WHERE lb.BranchName = 'Sharpstown' AND bl.DateDue = CONVERT(date,getDate())
GO


