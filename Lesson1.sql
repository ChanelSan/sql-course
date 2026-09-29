SELECT c.CustomerID,
       c.FirstName,
       c.LastName,
       c.City,
       c.Company,
       c.CustomerID
FROM   Customer AS C;

-- WHERE  c.City in ('London','Paris','Berlin','Rome')
SELECT   TOP 5 c.country,
               count(*) AS numberofcustomers
FROM     Customer AS c
GROUP BY c.country
ORDER BY numberofcustomers DESC;

--looking at invoices
SELECT 
i.customerid,i.billingcountry,
      sum(i.Total) as invoicetotal
FROM   Invoice AS i 
group by i.customerid, i.billingcountry
order by i.customerid;