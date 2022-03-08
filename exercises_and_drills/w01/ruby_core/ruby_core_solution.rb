# Write your solution below
class Employee
  attr_reader :first_name, :last_name, :salary, :active, :email
  attr_writer :first_name, :last_name, :salary, :active, :email

  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(first_name = 'Mike', last_name = 'Stevenson', salary = 50000, active = true)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def email
    @email = "#{@first_name}#{@last_name}@gmail.com"

    p @email
  end
  def full_name
        x = @last_name.length - 1
    if last_name[x] == "s"
      p "#{@first_name} #{@last_name}, Esquire"

    else
        p "#{@first_name} #{@last_name}"
    end 
  end
end

employee1 = Employee.new("Majora", "Carter", 80000, true)

employee2 = Employee.new("Danilo", "Campos", 80000, true)
employee3 = Employee.new()

employee1.print_info
employee2.print_info
employee3.print_info

employee1.full_name
employee2.full_name
employee3.full_name

employee1.email
employee2.email


employees = []

100.times do 
  employee = Employee.new
  employees << employee.full_name
end 

p employees
