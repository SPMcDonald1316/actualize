require "./employee.rb"
require "./email_reportable.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true)

p 'salary pre raise'
employee1.print_info
employee1.give_annual_raise
p 'salary post raise'
employee1.print_info
p employee1.first_name

employee1.print_info
p employee1.first_name = 'Mark'
employee1.print_info

employee2 = Actualize::Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 70000, active: false)

employee2.print_info

manager1 = Actualize::Manager.new(first_name: 'Manny', last_name: 'Williams', salary: 100000, active: true, employees: [employee1, employee2])

manager1.send_report

manager1.give_all_raises

p manager1.employees
manager1.fire_all_employees
p manager1.employees

intern = Actualize::Intern.new(first_name: 'Ingrid', last_name: 'Smith', salary: 0, active: true)

intern.print_info
intern.send_report
