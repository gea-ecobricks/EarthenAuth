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
    brikcoin_balance DECIMAL(10,5) DEFAULT 0.00000,  -- Up to 5 decimal points
    gea_status VARCHAR(255) DEFAULT NULL,
    language_pref VARCHAR(50) DEFAULT NULL,
    profile_pic VARCHAR(255) DEFAULT NULL,
    country VARCHAR(255) DEFAULT NULL,
    terms_of_service BOOLEAN DEFAULT TRUE,
    notes TEXT DEFAULT NULL,
    flagged BOOLEAN DEFAULT FALSE,
    suspended BOOLEAN DEFAULT FALSE,
    validation_credits INT DEFAULT 3,
    ayyew_score DECIMAL(10,2) DEFAULT 0.00,  -- Up to 2 decimal points
    plastic_score DECIMAL(10,2) DEFAULT 0.00,  -- Up to 2 decimal points
    carbon_score DECIMAL(10,2) DEFAULT 0.00,  -- Up to 2 decimal points
    biodiversity_score DECIMAL(10,2) DEFAULT 0.00,  -- Up to 2 decimal points
    -- Contact Credentials
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(15) DEFAULT NULL,
    primary_contact_credential VARCHAR(255) DEFAULT NULL,
    snail_mail_address VARCHAR(255) DEFAULT NULL,
    wa_phone VARCHAR(15) DEFAULT NULL,
    sms_phone VARCHAR(15) DEFAULT NULL,
    signal_phone VARCHAR(15) DEFAULT NULL,
    telegram_phone VARCHAR(15) DEFAULT NULL,
    line_phone VARCHAR(15) DEFAULT NULL,
    authenticity_score DECIMAL(3,1) DEFAULT 5.0
);
