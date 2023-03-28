SELECT f.friend_id, SUM(m.id) AS total_messages
FROM friends f
JOIN messages m ON f.friend_id = m.sender_id
WHERE f.user_id = <user_id>
GROUP BY f.friend_id
ORDER BY total_messages DESC
LIMIT 1;
