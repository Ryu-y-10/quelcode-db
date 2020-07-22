SELECT user_name, room_name,DATE_FORMAT(participated_at,'%Y-%m-%d') AS participated_at
FROM users u,chat_rooms r,participants p 
WHERE u.user_id = p.participant_id AND r.room_id = p.room_id AND u.is_deleted = 0 AND r.is_deleted = 0 ORDER BY participated_at ASC;