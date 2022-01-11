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
   where role_name like '%Java_developer%';
  
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
   where role_name like '%Automation%QA%';
  
-- Вывести имена и зарплаты Junior специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id
   left join salary on employee_salary.salary_id = salary.id
   where role_name like '%Junior%';
  
-- Вывести имена и зарплаты Middle специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on salary_id = salary.id
   where role_name like '%Middle%';
  
-- Вывести имена и зарплаты Senior специалистов
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on salary_id = salary.id 
   where role_name like '%Senior%'; 
  
-- Вывести зарплаты Java разработчиков
   select monthly_salary, role_name
   from salary 
   left join employee_salary on employee_salary.salary_id = salary.id
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '% Java %';
  
-- Вывести зарплаты Python разработчиков
   select monthly_salary, role_name
   from salary 
   left join employee_salary on salary_id = salary.id  
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%Python%';

-- Вывести имена и зарплаты Junior Python разработчиков 
   select employee_name, monthly_salary, role_name
   from employees 
   join employee_salary on employee_salary.employee_id = employees.id
   left join salary on salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id
   where role_name like '%Junior%Python%';
  
-- Вывести имена и зарплаты Middle JS разработчиков 
   select employee_name, monthly_salary, role_name
   from employees
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Middle%JavaScript%';
  
-- Вывести имена и зарплаты Senior Java разработчиков
   select employee_name, monthly_salary, role_name
   from employees
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Senior Java developer%';
  
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