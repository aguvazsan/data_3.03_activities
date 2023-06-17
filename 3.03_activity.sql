# 3.03 Activity 1

#Keep working on the `bank` database.

USE bank;

-- Let's find for each account an `owner` and a `disponent`.

SELECT * FROM bank.disp;

SELECT d1.account_id AS Account,  d1.client_id AS Client, d1.type AS Principal, d2.type 
FROM bank.disp d1
JOIN bank.disp d2 ON d1.account_id= d2.account_id AND d1.type <> d2.type
WHERE d1.type= 'OWNER';