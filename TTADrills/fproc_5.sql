/*PROCEDURE FOR SQL FINAL DRILL 5
For each library branch, retrieve the branch name and the total number of 
books loaned out from that branch.*/

GO

CREATE PROC usp_booksLoaned
AS
SELECT BranchName, COUNT(*) AS 'Books On Loan' FROM LIBRARY_BRANCH lb
INNER JOIN BOOK_LOANS bl on lb.BranchID = bl.BranchID
GROUP BY BranchName HAVING COUNT(*) >= 0
GO


