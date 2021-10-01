-- noinspection SqlResolveForFile

create table if not exists recipe_entries
(
    id            bigint       not null
        primary key,
    amount        int          not null,
    note          varchar(255) null,
    unit          varchar(6)   null,
    ingredient_id bigint       null,
    recipe_id     bigint       null,
    constraint FK9jy94wmog8xc23c3s3a3cmcx4
        foreign key (recipe_id) references recipes (id),
    constraint FKh9mh9yrfandt2kuehymy0atca
        foreign key (ingredient_id) references ingredients (id)
);

INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (4, 200, 'бедро', 'гр', 1, 3);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (5, 1, '3 процента', 'шт', 2, 3);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (7, 10, 'test note', 'гр', 1, 6);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (18, 200, 'бедро', 'гр', 2, 17);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (19, 1, '3 процента', 'шт', 1, 17);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (27, 200, 'бедро', 'кг', 2, 26);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (28, 1, '3 процента', 'гр', 1, 26);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (42, 200, 'бедро', 'гр', 2, 41);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (43, 1, '3 процента', 'гр', 1, 41);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (60, 200, 'бедро', 'шт', 2, 59);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (61, 1, '3 процента', 'гр', 1, 59);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (62, 100, '', 'гр', 1, 59);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (75, 400, 'шея', 'гр', 63, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (76, 500, 'шлифованный', 'гр', 64, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (77, 200, '', 'гр', 65, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (78, 200, '', 'гр', 66, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (79, 1, '', 'шт', 67, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (80, 20, '', 'гр', 68, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (81, 10, '', 'гр', 71, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (82, 10, '', 'гр', 72, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (83, 1, '', 'шт', 73, 74);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (88, 280, 'бедро', 'гр', 84, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (89, 100, '', 'гр', 85, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (90, 80, '', 'гр', 66, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (91, 80, '', 'гр', 65, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (92, 20, '', 'гр', 69, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (93, 20, '', 'гр', 86, 87);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (96, 200, 'обычные', 'гр', 94, 95);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (111, 200, '', 'гр', 104, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (112, 200, '', 'гр', 105, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (113, 100, '', 'гр', 106, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (114, 10, '', 'гр', 107, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (115, 10, '', 'гр', 108, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (116, 10, '', 'гр', 109, 110);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (120, 1, '', 'шт', 99, 119);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (121, 100, '', 'гр', 226, 119);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (122, 50, '', 'гр', 103, 119);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (123, 3, '', 'шт', 118, 119);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (124, 50, '', 'гр', 1, 119);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (132, 300, '', 'гр', 125, 131);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (133, 100, '', 'гр', 126, 131);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (134, 30, '', 'гр', 127, 131);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (135, 30, '', 'гр', 128, 131);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (136, 20, 'немного', 'гр', 130, 131);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (142, 300, '', 'гр', 137, 141);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (143, 2, '', 'шт', 118, 141);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (144, 20, '', 'гр', 99, 141);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (145, 1, 'достаточно половины', 'шт', 138, 141);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (151, 200, '', 'гр', 94, 150);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (152, 300, 'фарш', 'шт', 102, 150);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (153, 150, '', 'гр', 66, 150);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (154, 1, 'немного', 'шт', 73, 150);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (155, 200, '', 'гр', 149, 150);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (159, 200, 'филе', 'гр', 156, 158);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (160, 1, '', 'шт', 157, 158);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (161, 100, 'твёрдый', 'гр', 103, 158);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (162, 50, '', 'гр', 66, 158);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (169, 300, '', 'гр', 85, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (170, 250, '', 'гр', 164, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (171, 200, '', 'гр', 97, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (172, 75, '', 'гр', 157, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (173, 75, '', 'гр', 65, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (174, 50, '', 'гр', 66, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (175, 1, '', 'шт', 67, 168);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (183, 120, '', 'гр', 176, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (184, 1, '', 'шт', 67, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (185, 10, '', 'гр', 99, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (186, 50, '', 'гр', 177, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (187, 90, '', 'гр', 178, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (188, 300, 'филе', 'гр', 2, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (189, 150, '', 'гр', 179, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (190, 150, '', 'гр', 180, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (191, 2, '2 листа', 'шт', 181, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (192, 1, '', 'шт', 65, 182);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (196, 300, 'филе', 'гр', 101, 195);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (197, 30, '', 'гр', 193, 195);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (198, 30, '', 'гр', 194, 195);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (199, 1, 'половина', 'шт', 97, 195);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (200, 1, '', 'шт', 157, 195);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (204, 400, '9%', 'гр', 105, 203);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (205, 60, '', 'гр', 201, 203);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (206, 200, '', 'гр', 202, 203);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (207, 1, '', 'шт', 118, 203);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (208, 1, '', 'шт', 177, 203);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (212, 1, '', 'шт', 208, 211);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (213, 1, '', 'шт', 209, 211);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (214, 1, '', 'шт', 210, 211);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (215, 2, '', 'шт', 73, 211);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (220, 1, 'в банке', 'шт', 216, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (221, 1, '1/2', 'шт', 209, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (222, 1, '', 'шт', 98, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (223, 1, 'полбанки', 'шт', 217, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (224, 1, 'черри', 'шт', 157, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (225, 1, '', 'гр', 218, 219);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (232, 300, '', 'гр', 227, 231);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (233, 100, '', 'гр', 228, 231);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (234, 1, 'немного', 'шт', 229, 231);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (235, 1, 'немного', 'шт', 130, 231);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (236, 2, '2 зубчика', 'шт', 67, 231);
INSERT INTO groceries.recipe_entries (id, amount, note, unit, ingredient_id, recipe_id)
VALUES (237, 1, 'немного', 'шт', 230, 231);