BEGIN;
UPDATE chat_rooms r SET allow_upload_file = 0,updated_by = 1,updated_at = NOW() 
WHERE r.room_id NOT IN (SELECT p.room_id FROM participants p WHERE participant_id = 1)
AND is_deleted = 0;
COMMIT;