-- USE AdventureWorks2014

CREATE PROC procGetContactInfo
@fname VARCHAR(50) = NULL,
@lname VARCHAR(50) = NULL
AS
BEGIN
	SELECT P.FirstName, P.LastName, E.EmailAddress, Ph.PhoneNumber, A.AddressLine1, A.City, SP.Name, A.PostalCode
		FROM Person.Person AS P 
		INNER JOIN Person.EmailAddress AS E ON P.BusinessEntityID = E.BusinessEntityID
		INNER JOIN Person.PersonPhone AS Ph ON P.BusinessEntityID = Ph.BusinessEntityID
		INNER JOIN Person.BusinessEntityAddress AS BEA ON P.BusinessEntityID = BEA.BusinessEntityID
		INNER JOIN Person.Address AS A ON BEA.AddressID = A.AddressID
		INNER JOIN Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
		WHERE P.FirstName LIKE '%' + ISNULL(@fname,P.FirstName) + '%' AND P.LastName LIKE '%' + ISNULL(@lname,P.LastName) + '%'
		ORDER BY P.FirstName
END