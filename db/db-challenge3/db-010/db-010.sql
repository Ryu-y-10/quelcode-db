SELECT user_name,posted_at,room_name FROM users u,chat_rooms r,post_contents p1
WHERE posted_at = (SELECT MAX(posted_at) FROM post_contents p2 WHERE p1.room_id = p2.room_id) 
AND p1.posted_by = u.user_id AND r.room_id = p1.room_id 
AND u.is_deleted = 0 AND p1.is_deleted = 0 ORDER BY p1.room_id ASC;