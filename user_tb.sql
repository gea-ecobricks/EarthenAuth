CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    account_status TINYINT NOT NULL DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_login DATETIME DEFAULT CURRENT_TIMESTAMP,
    role VARCHAR(255) DEFAULT 'user',
    failed_login_attempts INT DEFAULT 0,
    password_reset_token VARCHAR(255) DEFAULT NULL,
    password_reset_expires DATETIME DEFAULT NULL,
    last_password_change DATETIME DEFAULT NULL,
    is_two_factor_enabled BOOLEAN DEFAULT FALSE,
    brikcoin_balance DECIMAL(10,5) DEFAULT 0.00000,
    gea_status VARCHAR(255) DEFAULT NULL,
    terms_of_service BOOLEAN DEFAULT TRUE,
    notes TEXT DEFAULT NULL,
    flagged BOOLEAN DEFAULT FALSE,
    suspended BOOLEAN DEFAULT FALSE,
    validation_credits INT DEFAULT 3,
    profile_pic VARCHAR(255) DEFAULT NULL,
    country_id INT,  -- Foreign key to the countries table
    email VARCHAR(255) UNIQUE NOT NULL,
    languages_id INT,  -- Foreign key to the languages_tb table
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    FOREIGN KEY (languages_id) REFERENCES languages_tb(languages_id)
);
