-- Создать таблицу employees.
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select*from employees;

-- Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Irina Vashchuk'),
       ('Yuliia Koval'),
       ('Tatiana Abramova'),
       ('Evgenia Mischenko'),
       ('Violetta Leonova'),
       ('Denys Myneev'),
       ('Olga Ruzhanova'),
       ('Nikolay Khozin'),
       ('Andrey Plakhov'),
       ('Olga Kontush'),
       ('Vlad Bubnov'),
       ('Evgeniy Beloysov'),
       ('Marina Shurpakova'),
       ('Dmitry Mitskevich'),
       ('Aleksey Kozin'),
       ('Leonid Alejnikov'),
       ('Alexander Popov'),
       ('Andrey Zverev'),
       ('Ksenia Efimova'),
       ('Valeria Holovchyk'),
       ('Vladimir Bagnenko'),
       ('Denis Ruban'),
       ('Roman Starkov'),
       ('Vadim Brazhnikov'),
       ('Kristina Tsurko'),
       ('Irina Goncharuk'),
       ('Natalia Nikolayenko'),
       ('Dmitriy Mandrikov'),
       ('Maksim Romnenko'),
       ('Aleksey Gerasimenko'),
       ('Maksim Ermolin'),
       ('Alina Kydryashova'),
       ('Aleksey Shukshin'),
       ('Evgeniy Samsonov'),
       ('Vladimir Evdokimov'),
       ('Aleksey Volkov'),
       ('Elena Stepanova'),
       ('Sergej Maksimov'),
       ('Sergey Pulatov'),
       ('Anna Leonovich'),
       ('Vadim Ksendzov'),
       ('Andrew Novikov'),
       ('Alla Besedina'),
       ('Vadin Khomich'),
       ('Alisa Golubova'),
       ('Mikhail Avdeev'),
       ('Inna Romankova'),
       ('Anton Trofimenko'),
       ('Nikolay Kudashov'),
       ('Masha Bondarenko'),
       ('Hanna Mironovich'),
       ('Anna Popova'),
       ('Elena Barinova'),
       ('Nikita Shevaldin'),
       ('Alla Shyt'),
       ('Elizaveta Tkach'),
       ('Sergey Kushnir'),
       ('Andrew Laikov'),
       ('Anton Gorbunov'),
       ('Vladislav Krukovich'),
       ('Dmitry Dudovskiy'),
       ('Alekandra Septa'),
       ('Pavel Simonov'),
       ('Dmitry Gilev'),
       ('Viktor Sokhin'),
       ('Evgeniy Fadeev'),
       ('Ekaterina Karavaeva'),
       ('Olga Kitaeva'),
       ('Vitaliy Kruglik'),
       ('Maria Romanova');
      
-- Создать таблицу salary.
create table salary (
	id serial primary key,
	monthly_salary int not null
);

select*from salary;

-- Наполнить таблицу salary 15 строками.
insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400);
      
-- Создать таблицу employee_salary.
create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

select*from employee_salary;

-- Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id/
insert into employee_salary (employee_id, salary_id)
values (3, 7),
       (1, 4),
       (5, 9),
       (40, 13),
       (23, 4),
       (11, 2),
       (52, 10),
       (15, 13),
       (26, 4),
       (16, 1),
       (33, 7),
       (20, 15),
       (31, 10),
       (45, 8),
       (47, 9),
       (71, 3),
       (64, 11),
       (77, 8),
       (79, 3),
       (80, 4),
       (89, 8),
       (91, 10),
       (99, 1),
       (73, 2),
       (101, 3),
       (102, 7),
       (28, 13),
       (65, 12),
       (35, 6),
       (13, 7),
       (25, 3),
       (7, 7),
       (10, 5),
       (55, 10),
       (57, 1),
       (59, 2),
       (62, 4),
       (66, 7),
       (68, 9),
       (69, 12);
       
-- Создать таблицу roles.
create table roles(
	id serial primary key,
	role_name int unique not null
);
    
select*from roles;

-- Поменять тип столба role_name с int на varchar(30).
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

-- Наполнить таблицу roles 20 строками.
insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
-- Создать таблицу roles_employee.
create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);
       
select*from roles_employee;

-- Наполнить таблицу roles_employee 40 строками.
insert into roles_employee (employee_id, role_id)
values (7, 2),
       (20, 4),
       (3, 9),
       (5, 13),
       (23, 4),
       (11, 2),
       (10, 9),
       (22, 13),
       (21, 3),
       (34, 4),
       (6, 7),
       (13, 20),
       (25, 20),
       (27, 3),
       (29, 5),
       (31, 7),
       (33, 9),
       (35, 11),
       (37, 13),
       (39, 15),
       (41, 17),
       (43, 19),
       (45, 18),
       (47, 20),
       (49, 17),
       (51, 15),
       (53, 3),
       (55, 5),
       (57, 7),
       (59, 9),
       (61, 11),
       (63, 13),
       (65, 15),
       (67, 1),
       (69, 3),
       (70, 5),
       (68, 7),
       (66, 9),
       (64, 11),
       (62, 13);
       




       
