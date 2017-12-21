/*Login to Application:*/
Select * from USERS where UserID = 'bill' and Password = 'bill100';


/*Display all the available books in the application:*/
Select BookID, BookTitle,Description,Author,Price,BidingEndDate from Books orderby BookID;

/*To Display book details based on the Department id selected:*/
Select 
b.BookID,b.BookTitle,b.Description,b.Author,b.ISBN,b.Volume,b.Price,b.DateAdded,b.BidingEndDate from BOOKS b 
inner join DEPARTMENT D where D.Dept_ID = b.BookID;

/*Update User Details:
If the username is changed to bill111 from bill it has to be updated with the following query :*/

Update table USERS set UserID = 'bill111' where UserID = 'bill';



/* GET THE DETAILS OF THE USERS WHO BIDDED FOR A BOOK AND WHO WERE NOT WON*/
 Select fname,minit,lname
From user table 
Where exists(select * 
FROM BIDDING_DETAILS
Where userid=biddinguser)
And NOT EXISTS(SELECT*
FROM FINALBIDDING
WHERE RECEIVERID=USERID);

/*GET THE DETAILS OF THE PERSON WHO WON BUT NOT HAVING BANKING DETAILS UPLOADED*/
SELECT FNAME,MINIT,LNAME
FROM EMPLOYEE
WHERE EXISTS(SELECT * 
FROM FINALBIDDING
WHERE USER ID=SELLERID)
AND NOT EXISTS(SELECT *
FROM BANKING_DETAILS
WHERE USERID=USERIDBANK);

/*HAVING CLAUSE*/

SELECT FNAME,LNAME, MINIT, COUNT(*)
FROM USER, BOOKS
WHERE USERID=USERID1
GROUP BY USERID,BOOKID
HAVING COUNT(*)>1;

 /*TRIGGERS bidding violation*/
Create trigger rate_voilation
Before insert or update OF SELLERRATING ON RATESERVICE
FOR EACH ROW
WHEN(NEW.SELLERRATING>5)
INFORM_ADMIN((SELECT* FROM USER
			Where userid=admin),new.sellerid)




