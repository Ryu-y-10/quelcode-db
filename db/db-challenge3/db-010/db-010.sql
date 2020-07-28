SELECT user_name,p1.posted_at,room_name FROM users u,post_contents p1,chat_rooms r,
(SELECT MAX(p2.posted_at) AS new_posted_at,p2.room_id FROM post_contents p2 WHERE p2.is_deleted = 0 GROUP BY p2.room_id) p3 
WHERE p1.posted_by = user_id AND r.room_id = p1.room_id AND u.is_deleted = 0 AND p1.posted_at = p3.new_posted_at 
ORDER BY p1.room_id ASC