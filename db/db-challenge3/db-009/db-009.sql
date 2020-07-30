SELECT r.room_name,COUNT(p.room_id) AS 投稿数 FROM users u,chat_rooms r,post_contents p
WHERE r.room_id = p.room_id AND p.is_deleted = 0 
AND u.user_id = p.posted_by AND u.is_deleted = 0
GROUP BY p.room_id ORDER BY 投稿数 DESC;