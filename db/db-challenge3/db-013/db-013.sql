BEGIN;
UPDATE users SET is_deleted = 1,updated_at = NOW()
WHERE work_phone_number IS NULL AND personal_mobile_number IS NULL;
COMMIT;