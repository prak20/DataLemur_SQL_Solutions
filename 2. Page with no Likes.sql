SELECT page_id FROM pages
where page_id not in (Select page_id from page_likes);