SELECT t.transaction_id,
	b.bank_name,
	t.transaction_date,
	t.transaction_type,
	t.amount
FROM transactions t
JOIN bank_accounts b
ON t.account_id = b.account_id;
SELECT
	b.bank_name,
	b.currency,
	b.opening_balance+ coalesce(sum(t.amount),0)AS current_balance  #COALESECE buat kalau account has no transactions, SQL return NULL
FROM bank_accounts b
LEFT JOIN transactions t
ON b.account_id = t.account_id
GROUP BY
		b.bank_name,
		b.currency,
		b.opening_balance;
SELECT
		currency,
		sum(opening_balance) AS total_cash
FROM bank_accounts
GROUP BY currency;
-- 1. What is the current cash balance by bank account?
SELECT 
	b.bank_name,
	b.currency,
	b.opening_balance+ coalesce(sum(t.amount),0) as current_cash
FROM bank_accounts b
LEFT JOIN transactions t
ON b.account_id =t.account_id
GROUP BY
	b.bank_name,
	b.currency,
	b.opening_balance;
-- 2. What is the total cash position by currency?
SELECT
	b.currency,
	SUM(b.opening_balance+coalesce(t.total_amount,0))AS total_cash
FROM bank_accounts b
LEFT JOIN(
	SELECT 
		account_id,
		SUM(amount) AS total_amount
	FROM transactions
	GROUP BY account_id)t
ON b.account_id =t.account_id
GROUP BY b.currency;
-- 3. Which transactions are unuasually large (>30000)?
SELECT
	t.transaction_id,
	b.bank_name,
	t.transaction_date,
	t.transaction_type,
	t.amount,
	t.description
FROM transactions t
JOIN bank_accounts b
ON b.account_id = t.account_id
WHERE ABS(t.amount)>30000
ORDER BY ABS(t.amount) DESC;
-- 4. Which bank accounts have no transactins?
SELECT
	b.account_id,
	b.bank_name
FROM bank_accounts b
LEFT JOIN transactions t
ON b.account_id = t.account_id
WHERE t.amount IS NULL;
