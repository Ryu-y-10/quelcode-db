SELECT room_id,room_name,room_summary,
CASE allow_upload_file 
WHEN 0 THEN '許可'
WHEN 1 THEN '禁止' END AS allow_upload_file,
allow_direct_chat,is_deleted,created_by,updated_by,created_at,updated_at
FROM `chat_rooms` WHERE is_deleted = 0 AND room_summary LIKE '%ダイレクトチャット' ORDER BY room_id ASC;