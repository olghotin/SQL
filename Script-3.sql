       -- ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
   select employee_name, monthly_salary 
   from employees
   join employee_salary on employee_id = employees.id
   join salary on salary_id = salary.id;
 
-- ������� ���� ���������� � ������� �� ������ 2000. 
   select employee_name, monthly_salary 
   from employees
   join employee_salary on employee_id = employees.id
   join salary on salary_id = salary.id
   where monthly_salary < 2000;
  
-- ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
   select monthly_salary, employee_name 
   from salary 
   left join employee_salary on employee_salary.salary_id = salary.id
   left join employees on employee_salary.employee_id = employees.id
   where employee_salary.employee_id is null; 
  
-- ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
   select monthly_salary, employee_name
   from salary 
   left join employee_salary on salary_id = salary.id
   left join employees on employee_id = employees.id
   where employee_salary.employee_id is null and monthly_salary < 2000;
  
-- ����� ���� ���������� ���� �� ��������� ��.
   select employee_name, monthly_salary 
   from employees
   left join employee_salary on employee_salary.employee_id = employees.id
   left join salary on employee_salary.salary_id = salary.id
   where monthly_salary is null;
  
 -- ������� ���� ���������� � ���������� �� ���������.
    select employee_name, role_name 
    from employees
    join roles_employee on roles_employee.employee_id = employees.id 
    join roles on roles_employee.role_id = roles.id;
   
-- ������� ����� � ��������� ������ Java �������������.
   select employee_name, role_name 
   from employees 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id
   where role_name like '%Java_developer%';
  
-- ������� ����� � ��������� ������ Python �������������.
   select employee_name, role_name 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Python%';
  
-- ������� ����� � ��������� ���� QA ���������.
   select employee_name, role_name 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%QA%';
  
-- ������� ����� � ��������� ������ QA ���������
   select employee_name, role_name 
   from employees 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Manual%QA%';

-- ������� ����� � ��������� ��������������� QA
   select employee_name, role_name  
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   where role_name like '%Automation%QA%';
  
-- ������� ����� � �������� Junior ������������
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles_employee.role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id
   left join salary on employee_salary.salary_id = salary.id
   where role_name like '%Junior%';
  
-- ������� ����� � �������� Middle ������������
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on salary_id = salary.id
   where role_name like '%Middle%';
  
-- ������� ����� � �������� Senior ������������
   select employee_name, monthly_salary, role_name
   from employees
   join roles_employee on employee_id = employees.id 
   join roles on role_id = roles.id 
   left join employee_salary on employee_salary.employee_id = employees.id 
   left join salary on salary_id = salary.id 
   where role_name like '%Senior%'; 
  
-- ������� �������� Java �������������
   select monthly_salary, role_name
   from salary 
   left join employee_salary on employee_salary.salary_id = salary.id
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '% Java %';
  
-- ������� �������� Python �������������
   select monthly_salary, role_name
   from salary 
   left join employee_salary on salary_id = salary.id  
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%Python%';

-- ������� ����� � �������� Junior Python ������������� 
   select employee_name, monthly_salary, role_name
   from employees 
   join employee_salary on employee_salary.employee_id = employees.id
   left join salary on salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id
   where role_name like '%Junior%Python%';
  
-- ������� ����� � �������� Middle JS ������������� 
   select employee_name, monthly_salary, role_name
   from employees
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Middle%JavaScript%';
  
-- ������� ����� � �������� Senior Java �������������
   select employee_name, monthly_salary, role_name
   from employees
   join employee_salary on employee_salary.employee_id = employees.id 
   join salary on employee_salary.salary_id = salary.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id 
   where role_name like '%Senior Java developer%';
  
-- ������� �������� Junior QA ���������
   select monthly_salary, role_name
   from salary
   left join employee_salary on employee_salary.salary_id = salary.id
   left join employees on employee_salary.employee_id = employees.id 
   left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   left join roles on roles_employee.role_id = roles.id
   where role_name like '%Junior%QA%';
  
-- ������� ������� �������� ���� Junior ������������
   select AVG(monthly_salary) as average_junior_salary
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%Junior%';
   
-- ������� ����� ������� JS �������������
   select SUM(monthly_salary) as sum_monthly_salary_JS_developer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%JavaScript%';
  
-- ������� ����������� �� QA ���������
   select MIN(monthly_salary) as min_monhtly_salary_QA_engineer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%QA%engineer%';
  
-- ������� ������������ �� QA ���������
   select MAX(monthly_salary) as max_monthly_salary_QA_engineer
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on role_id = roles.id 
   where role_name like '%QA%engineer%';
  
-- ������� ���������� QA ���������
   select count(role_name) as quantity_QA_engineer
   from roles
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%QA%engineer%';
 
-- ������� ���������� Middle ������������
   select count(role_name) as quantity_Middle
   from roles
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%Middle%';
  
-- ������� ���������� �������������
   select count(role_name) as quantity_developer
   from roles 
   join roles_employee on roles_employee.role_id = roles.id
   where role_name like '%developer%';
  
-- ������� ���� (�����) �������� �������������.
   select SUM(monthly_salary) as the_amount_of_developers_salaries
   from salary
   join employee_salary on employee_salary.salary_id = salary.id 
   join employees on employee_salary.employee_id = employees.id 
   join roles_employee on roles_employee.employee_id = employee_salary.employee_id
   join roles on roles_employee.role_id = roles.id
   where role_name like '%developer%';

-- ������� �����, ��������� � �� ���� ������������ �� �����������
   select employee_name, role_name, monthly_salary
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   order by  monthly_salary asc;
  
-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
   select employee_name, role_name, monthly_salary
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary >=1700 and monthly_salary <=2300
   order by monthly_salary asc;
   
-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
   select employee_name, role_name, monthly_salary 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary <2300
   order by monthly_salary asc;

-- ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
   select employee_name, role_name, monthly_salary 
   from employees
   join roles_employee on roles_employee.employee_id = employees.id
   join roles on role_id = roles.id 
   join employee_salary on employee_salary.employee_id = employees.id
   join salary on salary_id = salary.id 
   where monthly_salary in (1100, 1500, 2000)
   order by monthly_salary asc;