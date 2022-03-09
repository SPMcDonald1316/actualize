# Learning inheritance
class Employee
  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes #{@salary} per year"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true)
employee2 = Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 70000, active: false)

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    employees.each do |employee|
      employee.active = false
    end
  end

  def send_report
    p "going to send a report..."
    # do some logic here to send emails etc
    p "just sent all the reports"
  end
end

manager1 = Manager.new(first_name: 'Manny', last_name: 'Williams', salary: 100000, active: true, employees: [employee1, employee2])

# Intern can do everything an employee can do, and can also send reports
# Problem
# Inheriting from Employee won't give intern send_report method
# Inheriting from Manager gives interns ability to fire / give raises which we don't want
# One solution inherit from Employee and have non Dry code for the send_report method

class Intern < Employee
  def send_report
    p "going to send a report..."
    # do some logic here to send emails etc
    p "just sent all the reports"
  end
end