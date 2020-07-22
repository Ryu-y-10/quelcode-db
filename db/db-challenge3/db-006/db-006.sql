SELECT user_id,user_name,email_address,password,profile,work_phone_number,personal_mobile_number,is_deleted,created_at,updated_at FROM users 
WHERE is_deleted IN(0,1) ORDER BY user_id ASC;