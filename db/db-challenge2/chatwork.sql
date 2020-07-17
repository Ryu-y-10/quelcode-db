CREATE TABLE users(
    user_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    email_address VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    profile VARCHAR(1000),
    work_phone_number CHAR(13),
    personal_mobile_number CHAR(13),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE TABLE chat_rooms(
    room_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(100) NOT NULL,
    room_summary VARCHAR(1000),
    allow_upload_file TINYINT(1) NOT NULL,
    allow_direct_chat TINYINT(1) NOT NULL,
    is_deleted TINYINT(1) NOT NULL,
    created_by INT(10) NOT NULL,
    updated_by INT(10) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE TABLE participants(
    participant_id INT(10) NOT NULL REFERENCES users(user_id),
    room_id INT(10) NOT NULL REFERENCES chat_rooms(room_id),
    participated_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY(participant_id, room_id),
);
CREATE TABLE post_contents(
    post_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    room_id INT(10) NOT NULL REFERENCES chat_rooms(room_id),
    posted_by INT(10) NOT NULL,
    post_content VARCHAR(1000) NOT NULL,
    attached_file_name VARCHAR(100),
    is_deleted TINYINT(1) NOT NULL,
    updated_by INT(10) NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    posted_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL 
);
CREATE TABLE tasks(
    task_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    task_content VARCHAR(1000) NOT NULL,
    person_in_charge_id INT(10) NOT NULL REFERENCES users(user_id),
    deadline_date_time DATETIME,
    is_completed TINYINT(1) NOT NULL,
    is_deleted TINYINT(1) NOT NULL,
    task_created_by INT(10) NOT NULL,
    task_updated_by INT(10) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);






