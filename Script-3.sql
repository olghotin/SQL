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

-- Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id.
insert into employee_salary (employee_id, salary_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 15),
       (15, 1),
       (16, 2),
       (17, 3),
       (18, 4),
       (19, 5),
       (20, 6),
       (21, 7),
       (22, 8),
       (23, 9),
       (24, 10),
       (25, 11),
       (26, 12),
       (27, 13),
       (28, 15),
       (29, 1),
       (30, 2),
       (71, 3),
       (72, 4),
       (73, 5),
       (74, 6),
       (75, 7),
       (76, 8),
       (77, 9),
       (78, 10),
       (79, 11),
       (80, 12);
       
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
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 1),
       (22, 2),
       (23, 3),
       (24, 4),
       (25, 5),
       (26, 6),
       (27, 7),
       (28, 8),
       (29, 9),
       (30, 10),
       (31, 11),
       (32, 12),
       (33, 13),
       (34, 14),
       (35, 15),
       (36, 16),
       (37, 17),
       (38, 18),
       (39, 19),
       (40, 20);
      
      
-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
   select employee_name, monthly_salary 
   from employees
   join employee_salary on employee_id = employees.id
   join salary on salary_id = salary.id;
 
-- Вывести всех работников у которых ЗП меньше 2000. 
   select employee_name, monthly_salary 
   from employees
   join employee_salary on employee_id = employees.id
   join salary on salary_id = salary.id
   where monthly_salary < 2000;
 
-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
   select monthly_salary, employee_name 
   from salary 
   left join employee_salary on employee_salary.salary_id = salary.id
   left join employees on employee_salary.employee_id = employees.id
   where employee_salary.employee_id is null; 
  
-- Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
   select monthly_salary, employee_name
   from salary 
   left join employee_salary on salary_id = salary.id
   left join employees on employee_id = employees.id
   where employee_salary.employee_id is null and monthly_salary < 2000;
  
-- Найти всех работников кому не начислена ЗП.
   select employee_name, monthly_salary 
   from employees
   left join employee_salary on employee_salary.employee_id = employees.id
   left join salary on employee_salary.salary_id = salary.id
   where monthly_salary is null;
 
 -- Вывести всех работников с названиями их должности.
    select employee_name, role_name 
    from employees
    join roles_employee on roles_employee.employee_id = employees.id 
    join roles on roles_employee.role_id = roles.id;

-- Вывести имена и должность только Java разработчиков.
   select employee_name, role_name 
   from employees 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id
   where role_name like '%Java%';
  
-- Вывести имена и должность только Python разработчиков.
   select employee_name, role_name 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Python%';
  
-- Вывести имена и должность всех QA инженеров.
   select employee_name, role_name 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%QA%';
  
-- Вывести имена и должность ручных QA инженеров
   select employee_name, role_name 
   from employees 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Manual%QA%';
  
-- Вывести имена и должность автоматизаторов QA
   select employee_name, role_name  
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Automation QA%';
  
-- Вывести имена и зарплаты Junior специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on employee_salary.salary_id = salary.id
   where role_name like '%Junior%';
  
-- Вывести имена и зарплаты Middle специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on salary_id = salary.id
   where role_name like '%Middle%';
  
-- Вывести имена и зарплаты Senior специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on salary_id = salary.id 
   where role_name like '%Senior%'; 
  
-- Вывести зарплаты Java разработчиков
   select monthly_salary, role_name
   from salary 
   left join employee_salary on employee_salary.salary_id = salary.id
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on role_id = roles.id 
   where role_name like '% Java %';
   
-- Вывести зарплаты Python разработчиков
   select monthly_salary, role_name
   from salary 
   left join employee_salary on salary_id = salary.id  
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on role_id = roles.id 
   where role_name like '%Python%';

-- Вывести имена и зарплаты Junior Python разработчиков 
   select employee_name, monthly_salary, role_name
   from employees 
   left join employee_salary on employee_salary.employee_id = employees.id
   left join salary on salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on role_id = roles.id
   where role_name like '%Junior%Python%';
   
-- Вывести имена и зарплаты Middle JS разработчиков 
   select employee_name, monthly_salary, role_name
   from employees
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Middle%JavaScript%';
  
-- Вывести имена и зарплаты Senior Java разработчиков
   select employee_name, monthly_salary, role_name
   from employees
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Senior Java%';
  
-- Вывести зарплаты Junior QA инженеров
   select monthly_salary, role_name
   from salary
   left join employee_salary on employee_salary.salary_id = salary.id
   left join employees on employee_salary.employee_id = employees.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id
   where role_name like '%Junior%QA%';
  
-- Вывести среднюю зарплату всех Junior специалистов
   select AVG(monthly_salary) as average_junior_salary
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%Junior%';
   
-- Вывести сумму зарплат JS разработчиков
   select SUM(monthly_salary) as sum_monthly_salary_JS_developer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%JavaScript%';
  
-- Вывести минимальную ЗП QA инженеров
   select MIN(monthly_salary) as min_monhtly_salary_QA_engineer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%QA%engineer%';
  
-- Вывести максимальную ЗП QA инженеров
   select MAX(monthly_salary) as max_monthly_salary_QA_engineer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%QA%engineer%';
  
-- Вывести количество QA инженеров
   select count(role_name) as quantity_QA_engineer
   from roles
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%QA%engineer%';
  
-- Вывести количество Middle специалистов
   select count(role_name) as quantity_Middle
   from roles
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%Middle%';
  
-- Вывести количество разработчиков
   select count(role_name) as quantity_developer
   from roles 
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%developer%';
  
-- Вывести фонд (сумму) зарплаты разработчиков.
   select SUM(monthly_salary) as the_amount_of_developers_salaries
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on roles_employee.role_id = roles.id
   where role_name like '%developer%';
   
-- Вывести имена, должности и ЗП всех специалистов по возрастанию
   select employee_name, role_name, monthly_salary
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   order by  monthly_salary asc;
  
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
   select employee_name, role_name, monthly_salary
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary >=1700 and monthly_salary <=2300
   order by monthly_salary asc;
   
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
   select employee_name, role_name, monthly_salary 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary <2300
   order by monthly_salary asc;
  
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
   select employee_name, role_name, monthly_salary 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary in (1100, 1500, 2000)
   order by monthly_salary asc;
   