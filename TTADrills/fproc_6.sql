/*PROCEDURE FOR SQL FINAL DRILL 6
Retrieve the names, addresses, and the number of books checked out for all borrowers
who have more than five books checked out.*/

GO

CREATE PROC usp_hasLots
AS
SELECT Name, Address, COUNT(*) AS 'Books On Loan' FROM BORROWER b
INNER JOIN BOOK_LOANS bl ON b.CardNo = bl.CardNo
GROUP BY Name, Address HAVING COUNT(*) > 5
GO



