/*PROCEDURE FOR SQL FINAL DRILL 3
Retrieve the names of all borrowers who do not have any books checked out.*/
GO

/*PROCEDURE FOR SQL FINAL DRILL 3
Retrieve the names of all borrowers who do not have any books checked out.*/

CREATE PROC usp_noBooks
AS
SELECT Name AS 'No Books On Loan' FROM BORROWER b
LEFT JOIN BOOK_LOANS bl ON bl.CardNo = b.CardNo
WHERE bl.BookID IS NULL
GO

