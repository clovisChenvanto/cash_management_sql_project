INSERT INTO bank_accounts(account_id, bank_name, account_number,currency,opening_balance)
VALUES
(1, "Deustche Bank", "DE001", "EUR",250000.00),
(2, 'JPMorgan Chase', 'US001', 'USD', 400000.00),
(3, 'HSBC', 'UK001', 'GBP', 150000.00),
(4, 'BNP Paribas', 'FR001', 'EUR', 320000.00);
INSERT INTO transactions
(transaction_id, account_id, transaction_date,
transaction_type, amount, description)
VALUES
(1, 1, '2025-01-10', 'Deposit',
50000.00, 'Client payment'),
(2, 2, '2025-01-12', 'Withdrawal',
-20000.00, 'Supplier payment'),
(3, 1, '2025-01-15', 'Transfer',
-15000.00, 'Internal treasury transfer'),
(4, 3, '2025-01-18', 'Deposit',
75000.00, 'Bond proceeds');
