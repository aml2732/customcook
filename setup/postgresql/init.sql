CREATE TABLE recipe(id INT, name VARCHAR(20), description VARCHAR(100), instructions VARCHAR(500));
CREATE TABLE ingredients(id INT, name VARCHAR(20), amount VARCHAR(20), ingredientid INT);
CREATE TABLE tags(id INT, name VARCHAR(50));
INSERT INTO recipe values(0, 'test', 'testdescription', 'testinstructions');
INSERT INTO ingredients values(0, 'chicken', '1 cup', 1);
INSERT INTO tags values(0, 'test');
SELECT * FROM recipe;
SELECT * FROM ingredients;
SELECT * FROM tags;
