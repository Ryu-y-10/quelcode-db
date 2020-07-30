BEGIN;
DELETE FROM participants WHERE participant_id IN (SELECT user_id FROM users WHERE is_deleted = 1);
COMMIT;