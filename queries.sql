-- Get all post with user info
select post.post_id, users.username, post.caption, post.image_url
from post
JOIN users on post.username = users.username;

-- Find the most liked posts
select post.post_id, post.caption, COUNT(liked.like_id) as total_likes
from post
JOIN liked on post.post_id = liked.post_id
GROUP BY post.post_id
ORDER BY total_likes DESC
Limit 5;

-- Find mutual followers between two users
select f1.following AS mutual_friends
from followers f1
JOIN followers f2 ON f1.following = f2.following
where f1.followers = 'srishty' AND f2.followers = 'shrijal';

-- Update user profile (bio or email)
Update users
Set bio = 'Shining bright', email = 'newemail@example.com'
Where username = 'srishty';

-- Update a post caption
update post
Set caption = 'Updated caption for this post'
Where post_id = 1;

-- Delete a post
DELETE FROM followers
WHERE followers = 'srishty' AND following = 'shrijal';