DELIMITER $$
CREATE PROCEDURE usp_get_holders_with_balance_higher_than (money DECIMAL(19,4))
BEGIN
SELECT first_name, last_name FROM account_holders as ah
	RIGHT JOIN accounts as ac ON ac.account_holder_id = ah.id
    GROUP BY ah.id
    HAVING sum(balance) > money
    ORDER BY ah.id;
END $$
DELIMITER ;

CALL usp_get_holders_with_balance_higher_than(8000);