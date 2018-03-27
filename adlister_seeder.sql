USE adlister;

INSERT INTO users(email, password, username) VALUES
  ('abc123@gmail.com', 'ducks', 'alph'),
  ('sunshing24@hotmail.com', 'tooHotttttt', 'The_SUN'),
  ('MScott@dundermifflin.com', 'Iheartryan', 'LittleKidLover'),
  ('Dschrute@dundermifflin.com', 'ryanstartedthefire', 'Beet_farmer01');

INSERT INTO categories(category) VALUES
  ('for sale'), ('services'), ('jobs'), ('housing'), ('community');

INSERT INTO ads(title, description, user_id) VALUES
  ('Bike for sale', 'gently used bike', 3), ('house for sale', '3 bed 2 bath with pool. owner finance 200k', 3), ('babysitter for hire', '10/hr weekend evenings', 2), ('room for rent', 'single room w/ private bath. 200/month split utilities.', 4), ('Will bake for money', 'accepting orders for macrons, 2 dozen per order. 30$', 2),('Mae Cup\'s makeup', 'Makeup for all events, 1 hr sessions, 150$ each', 1), ('Hardcore Parkour', 'will teach', 4),('Junior Java developer', 'seeking entry level Java developer. full time. competitive pay', 2);

INSERT INTO ads_cats(ads_id, categories_id) VALUES
  (1,1), (1,5), (2,1), (2,4), (3,2), (3,5), (4,4), (5,2), (5,1), (5,5), (6,2), (7,2), (7,5), (8,3);


SELECT email FROM users WHERE users.id IN (
  SELECT user_id FROM ads WHERE title LIKE 'house for sale'
);

SELECT category FROM categories
WHERE categories.id IN (
  SELECT categories_id FROM ads_cats
  WHERE ads_id IN (
    SELECT ads.id FROM ads WHERE title LIKE 'house for sale')
);

SELECT title, description
FROM ads AS a
  JOIN ads_cats ac
    ON a.id = ac.ads_id
  JOIN categories c
    ON ac.categories_id = c.id
WHERE category LIKE 'for sale';

SELECT username, title, description, category
FROM ads AS a
  JOIN ads_cats ac
  ON a.id = ac.ads_id
  JOIN categories c
  ON ac.categories_id = c.id
  JOIN users u
  ON a.user_id = u.id
WHERE user_id LIKE '2';







