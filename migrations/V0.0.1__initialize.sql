create table clients
(
    id   int primary key,
    name text
);

create table calls
(
    id            int primary key,
    from_id       int references clients not null,
    to_id         int references clients not null,
    call_duration int,
    timestamp     timestamptz
);

insert into clients
values (1, 'John'),
       (2, 'Alice'),
       (3, 'Piter'),
       (4, 'Carl');

insert into calls
values (1, 1, 2, 184528, '2022-12-17T09:05:16+0300'),
       (2, 1, 3, 269037, '2022-12-17T09:45:03+0300'),
       (3, 2, 3, 44278, '2022-12-17T15:20:35+0300'),
       (4, 2, 4, 25689, '2022-12-17T15:30:08+0300');

insert into calls
values (6, 1, 4, 255896, '2022-12-17T16:10:52+0300');
