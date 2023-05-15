SELECT DISTINCT e.user_id
FROM emails e
JOIN texts t
  ON e.email_id = t.email_id
where abs(extract(day from t.action_date - e.signup_date)) = 1
AND t.signup_action = 'Confirmed';