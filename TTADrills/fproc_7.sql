/*PROCEDURE FOR SQL FINAL DRILL 7
For each book authored (or co-authored) by "Stephen King", retrieve the title and the 
number of copies owned by the library branch whose name is "Central".*/

GO

CREATE PROC usp_authorAtBranch
AS
SELECT Title, COUNT(*) AS 'Copies' FROM BOOKS b
INNER JOIN BOOK_LOANS bl ON b.BookID = bl.BookID
INNER JOIN BOOK_AUTHORS ba on b.BookID = ba.BookID
INNER JOIN LIBRARY_BRANCH lb on bl.BranchID = lb.BranchID
WHERE ba.AuthorName = 'Stephen King' AND lb.BranchName = 'Central'
GROUP BY Title HAVING COUNT(*) >= 0
GO



