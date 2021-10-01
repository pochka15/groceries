-- noinspection SqlResolveForFile

create table if not exists categories
(
    id   bigint       not null
        primary key,
    name varchar(255) null
);

INSERT INTO groceries.categories (id, name)
VALUES (1, 'Мясо');
INSERT INTO groceries.categories (id, name)
VALUES (2, 'Молочные продукты');
INSERT INTO groceries.categories (id, name)
VALUES (4, 'Рыба');
INSERT INTO groceries.categories (id, name)
VALUES (5, 'Морепродукты');
INSERT INTO groceries.categories (id, name)
VALUES (6, 'Яйца, яичные продукты');
INSERT INTO groceries.categories (id, name)
VALUES (7, 'Другие продукты из молока');
INSERT INTO groceries.categories (id, name)
VALUES (8, 'Cоевые продукты');
INSERT INTO groceries.categories (id, name)
VALUES (9, 'Овощи');
INSERT INTO groceries.categories (id, name)
VALUES (10, 'Зелень');
INSERT INTO groceries.categories (id, name)
VALUES (11, 'Фрукты, ягоды, сухофрукты');
INSERT INTO groceries.categories (id, name)
VALUES (12, 'Грибы');
INSERT INTO groceries.categories (id, name)
VALUES (13, 'Жиры, масла');
INSERT INTO groceries.categories (id, name)
VALUES (14, 'Орехи');
INSERT INTO groceries.categories (id, name)
VALUES (15, 'Крупы, злаки');
INSERT INTO groceries.categories (id, name)
VALUES (16, 'Семена');
INSERT INTO groceries.categories (id, name)
VALUES (17, 'Специи, пряности');
INSERT INTO groceries.categories (id, name)
VALUES (18, 'Мука, продукты из муки');
INSERT INTO groceries.categories (id, name)
VALUES (19, 'Мука и отруби, крахмал');
INSERT INTO groceries.categories (id, name)
VALUES (20, 'Хлеб');
INSERT INTO groceries.categories (id, name)
VALUES (21, 'Макароны, лапша (паста)');
INSERT INTO groceries.categories (id, name)
VALUES (22, 'Сладости, кондитерские изделия');
INSERT INTO groceries.categories (id, name)
VALUES (23, 'Фастфуд');
INSERT INTO groceries.categories (id, name)
VALUES (24, 'Напитки');
INSERT INTO groceries.categories (id, name)
VALUES (25, 'Фруктовые соки и нектары');
INSERT INTO groceries.categories (id, name)
VALUES (26, 'Пророщенные семена');
INSERT INTO groceries.categories (id, name)
VALUES (27, 'Соусы');