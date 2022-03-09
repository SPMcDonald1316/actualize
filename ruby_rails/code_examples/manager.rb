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
  # To add employees instance variable to Manager class need to create its own initialize method with variable
  # Code is no longer DRY since this initialize method will take precedence over any inherited initialize method
  # This is solved by using super in Manager initialize method
  # Super grabs all instance variables from inherited class first then creates added variables from new initialize
  def initialize(input_options)
    # @first_name = input_options[:first_name]
    # @last_name = input_options[:last_name]
    # @salary = input_options[:salary]
    # @active = input_options[:active]
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

manager1.print_info

manager1.send_report

p manager1.employees
puts 
manager1.give_all_raises
p manager1.employees
manager1.fire_all_employees
puts
p manager1.employees