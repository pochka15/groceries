-- noinspection SqlResolveForFile

create table if not exists hibernate_sequence
(
    next_val bigint null
);

INSERT INTO groceries.hibernate_sequence (next_val)
VALUES (238);