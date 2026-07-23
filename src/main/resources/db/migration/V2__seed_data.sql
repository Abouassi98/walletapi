-- Password for alice = 'password123'
-- Password for admin = 'admin456'
-- Hashes below are pre-computed BCrypt strings (cost factor 10)
INSERT INTO
    users (
        username,
        password,
        email,
        role
    )
VALUES (
        'alice',
        '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy',
        'alice@example.com',
        'USER'
    ),
    (
        'admin',
        '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW',
        'admin@example.com',
        'ADMIN'
    );

INSERT INTO
    wallets (user_id, balance, currency)
VALUES (1, 1500.0000, 'USD'),
    (2, 9999.0000, 'USD');

INSERT INTO
    transactions (
        wallet_id,
        amount,
        type,
        description
    )
VALUES (
        1,
        500.0000,
        'CREDIT',
        'Initial deposit'
    ),
    (
        1,
        1000.0000,
        'CREDIT',
        'Salary payment'
    ),
    (
        1,
        -250.00,
        'DEBIT',
        'Utility bill'
    ),
    (
        2,
        9999.0000,
        'CREDIT',
        'Admin seed balance'
    );