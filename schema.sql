CREATE TABLE bank_accounts (
    account_id INTEGER PRIMARY KEY,
    bank_name TEXT,
    account_number TEXT,
    currency TEXT,
    opening_balance DECIMAL(15,2)
);
CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    account_id INTEGER,
    transaction_date DATE,
    transaction_type TEXT,
    amount DECIMAL(15,2),
    description TEXT,
    FOREIGN KEY (account_id)
    REFERENCES bank_accounts(account_id)
);
