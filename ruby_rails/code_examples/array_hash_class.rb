# hash
# employee1 = {first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true}

# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."

# class
class Employee
  # Can use attr_reader / attr_writer instead of having to write readers/writers
  # attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :first_name, :last_name, :salary, :active

  # Can use attr_accessor if allowing both read and write capabilities
  attr_accessor :first_name, :last_name, :salary, :active

  # Initialize method is run whenver the class is called
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  
  # Readers
  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def salary
  #   @salary
  # end

  # def active
  #   @active
  # end

  # Writers
  # def first_name=(fname)
  #   @first_name = fname
  # end

  # def last_name=(lname)
  #   @last_name = lname
  # end

  # def salary=(salary)
  #   @salary = salary
  # end

  # def active=(status)
  #   @active = status
  # end

  def print_info
    p "#{@first_name} #{@last_name} makes #{@salary} per year"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee = Employee.new({first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true})

# employee.print_info
# employee.give_annual_raise
# employee.print_info

p employee.first_name
p employee.last_name
p employee.salary
p employee.active
p
employee.first_name = 'Majora'
employee.last_name = 'Carter'
employee.salary = 70000
employee.active = false
p
p employee.first_name
p employee.last_name
p employee.salary
p employee.active