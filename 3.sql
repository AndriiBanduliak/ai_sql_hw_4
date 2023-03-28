SELECT *
FROM users
WHERE id NOT IN (
  SELECT DISTINCT(user_id)
  FROM messages
);
