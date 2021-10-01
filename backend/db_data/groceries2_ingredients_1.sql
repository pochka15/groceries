-- noinspection SqlResolveForFile

create table if not exists ingredients
(
    id          bigint       not null
        primary key,
    name        varchar(255) null,
    category_en bigint       not null,
    constraint UK_j6tsl15xx76y4kv41yxr4uxab
        unique (name),
    constraint FKbp6a9dsakgi0vj05yh26ljt7f
        foreign key (category_en) references categories (id)
);

INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (1, 'Молоко', 2);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (2, 'Курица', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (63, 'Свинина', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (64, 'Рис', 15);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (65, 'Морковь', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (66, 'Лук репчатый', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (67, 'Леснок', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (68, 'Ласло растительное', 13);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (69, 'Соль', 17);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (71, 'зира', 17);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (72, 'куркума', 17);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (73, 'салатные листья', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (84, 'лосось', 4);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (85, 'картофель', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (86, 'розмарин', 17);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (94, 'макароны', 18);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (97, 'баклажан', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (98, 'сельдерей', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (99, 'укроп', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (100, 'петрушка', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (101, 'индейка', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (102, 'говядина', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (103, 'сыр', 2);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (104, 'каша овсяная', 15);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (105, 'творог', 2);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (106, 'салат айсберг', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (107, 'сухофрукты', 11);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (108, 'миндаль', 14);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (109, 'любые ягоды', 11);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (117, 'ветчина', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (118, 'яйца', 6);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (125, 'скумбрия', 4);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (126, 'водоросли вакаме', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (127, 'руккола', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (128, 'редис', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (129, 'кабачок', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (130, 'кунжут', 14);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (137, 'гречка', 15);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (138, 'болгарский перец', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (149, 'соус томатный', 27);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (156, 'треска', 4);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (157, 'помидоры', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (164, 'Капуста белокочанная', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (167, 'масло сливочное', 7);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (176, 'майонез', 6);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (177, 'сметана', 7);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (178, 'кефир', 7);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (179, 'пекинская капуста', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (180, 'огурец', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (181, 'лаваш', 20);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (193, 'Соус барбекю', 27);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (194, 'Горчица', 27);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (201, 'лимонные дольки', 22);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (202, 'мука', 18);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (208, 'дорада', 4);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (209, 'лимон', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (210, 'базилик', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (216, 'Тунец', 4);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (217, 'Фасоль', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (218, 'красный лук', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (226, 'чоризо', 1);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (227, 'Спаржа', 9);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (228, 'Пармезан', 7);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (229, 'Соевый соус', 27);
INSERT INTO groceries.ingredients (id, name, category_en)
VALUES (230, 'прошутто', 1);