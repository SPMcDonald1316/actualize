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

employee = Employee.new({first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true})

class Manager < Employee
  def send_report
    p "going to send a report..."
    # do some logic here to send emails etc
    p "just sent all the reports"
  end
end

manager1 = Manager.new(first_name: 'Manny', last_name: 'Williams', salary: 100000, active: true)

manager1.print_info

manager1.send_report