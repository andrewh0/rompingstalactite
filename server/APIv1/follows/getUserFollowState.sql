/**
* input
*   targetID: user_id<Number>
*   userID:   user_id<Number>
*
* returns:
* | followcount | togglefollow |
* |-------------|--------------|
* | number      | boolean      |
*/

WITH user_of_interest AS (
  SELECT
    follower
  FROM
    followers_users_users
  WHERE
    target = ${targetID}
)
SELECT
  count(*) AS followCount,
  (EXISTS
    (SELECT
      1
    FROM
      user_of_interest
    WHERE
      follower = ${userID})
  ) AS toggleFollow
FROM
  user_of_interest;
