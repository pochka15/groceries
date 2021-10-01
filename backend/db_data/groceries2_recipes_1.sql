-- noinspection SqlResolveForFile

create table if not exists recipes
(
    id   bigint       not null
        primary key,
    name varchar(255) null
);

INSERT INTO groceries.recipes (id, name)
VALUES (3, 'Test');
INSERT INTO groceries.recipes (id, name)
VALUES (6, 'test2');
INSERT INTO groceries.recipes (id, name)
VALUES (17, 'Test 5');
INSERT INTO groceries.recipes (id, name)
VALUES (26, 'finally');
INSERT INTO groceries.recipes (id, name)
VALUES (41, 'final test');
INSERT INTO groceries.recipes (id, name)
VALUES (59, 'Test 9');
INSERT INTO groceries.recipes (id, name)
VALUES (74, 'Плов со свининой');
INSERT INTO groceries.recipes (id, name)
VALUES (87, 'Лосось в фольге');
INSERT INTO groceries.recipes (id, name)
VALUES (95, 'Тест макароны');
INSERT INTO groceries.recipes (id, name)
VALUES (110, 'Каша овсяная с творогом и айсбергом');
INSERT INTO groceries.recipes (id, name)
VALUES (119, 'Омлет');
INSERT INTO groceries.recipes (id, name)
VALUES (131, 'Скумбрия с водорослями вакаме');
INSERT INTO groceries.recipes (id, name)
VALUES (141, 'Гречка с яйцами');
INSERT INTO groceries.recipes (id, name)
VALUES (150, 'Макароны по-флотски');
INSERT INTO groceries.recipes (id, name)
VALUES (158, 'Треска в собственном соку');
INSERT INTO groceries.recipes (id, name)
VALUES (168, 'Рагу овощное');
INSERT INTO groceries.recipes (id, name)
VALUES (182, 'Шаверма с курицей');
INSERT INTO groceries.recipes (id, name)
VALUES (195, 'Индейка жареная с соусом барбекю');
INSERT INTO groceries.recipes (id, name)
VALUES (203, 'Сырники по-Ивлевски');
INSERT INTO groceries.recipes (id, name)
VALUES (211, 'Дорада в духовке с лимоном и базиликом');
INSERT INTO groceries.recipes (id, name)
VALUES (219, 'Салат с тунцом');
INSERT INTO groceries.recipes (id, name)
VALUES (231, 'Запеченная спаржа с чесноком и прошутто');