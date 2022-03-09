# Two classes that share initialize, brake, accelerate, and turn methods
# NOT DRY 
# Problem is inheritance alone won't fix since we don't want Bike to inherit honk_horn or Car to inherit ring_bell

# class Car
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeep!"
#   end
# end

# class Bike
#   def initialize
#     @speed = 0
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# SOLUTION 1
# Create a thrid class that encompasses the shared methods while leaving the differing methods in their respective classes

# class Vehicle
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end
# end

# class Car < Vehicle
#   def honk_horn
#     puts "Beeeeep!"
#   end
# end

# class Bike < Vehicle
#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# SOLUTION 2
# module Moveable
#   attr_reader :speed, :direction
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end
# end

# class Car
#   include Moveable

#   def honk_horn
#     puts "Beeeeep!"
#   end
# end

# class Bike
#   include VehicleMoveable

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# Inheritance example using super
# class Employee
#   attr_accessor :first_name, :last_name, :salary, :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def print_info
#     p "#{@first_name} #{@last_name} makes #{@salary} per year"
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end

# employee1 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true)
# employee2 = Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 70000, active: false)

# class Manager < Employee
#   attr_reader :employees
  # To add employees instance variable to Manager class need to create its own initialize method with variable
  # Code is no longer DRY since this initialize method will take precedence over any inherited initialize method
  # This is solved by using super in Manager initialize method
  # Super grabs all instance variables from inherited class first then creates added variables from new initialize
  # def initialize(input_options)
    # @first_name = input_options[:first_name]
    # @last_name = input_options[:last_name]
    # @salary = input_options[:salary]
    # @active = input_options[:active]
  #   super
  #   @employees = input_options[:employees]
  # end

#   def give_all_raises
#     employees.each do |employee|
#       employee.give_annual_raise
#     end
#   end

#   def fire_all_employees
#     employees.each do |employee|
#       employee.active = false
#     end
#   end

#   def send_report
#     p "going to send a report..."
#     # do some logic here to send emails etc
#     p "just sent all the reports"
#   end
# end

# Module example
# module EmailReportable
#   def send_report
#     p "going to send a report..."
#     # do some logic here to send emails etc
#     p "just sent all the reports"
#   end
# end

# class Employee
#   attr_accessor :first_name, :last_name, :salary, :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def print_info
#     p "#{@first_name} #{@last_name} makes #{@salary} per year"
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end

# employee1 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 80000, active: true)
# employee2 = Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 70000, active: false)

# class Manager < Employee
#   include EmailReportable
#   attr_reader :employees

#   def initialize(input_options)
#     super
#     @employees = input_options[:employees]
#   end

#   def give_all_raises
#     employees.each do |employee|
#       employee.give_annual_raise
#     end
#   end

#   def fire_all_employees
#     employees.each do |employee|
#       employee.active = false
#     end
#   end
# end

# manager1 = Manager.new(first_name: 'Manny', last_name: 'Williams', salary: 100000, active: true, employees: [employee1, employee2])

# # Intern can do everything an employee can do, and can also send reports
# # Problem
# # Inheriting from Employee won't give intern send_report method
# # Inheriting from Manager gives interns ability to fire / give raises which we don't want
# # One solution inherit from Employee and have non Dry code for the send_report method

# # class Intern < Employee
# #   def send_report
# #     p "going to send a report..."
# #     # do some logic here to send emails etc
# #     p "just sent all the reports"
# #   end
# # end

# # This problem is a use case for a module
# # Modules typically end in -able
# # Modules are a collection of methods that can be added to different classes
# # Have to move module line where its created before its called

# class Intern < Employee
#   include EmailReportable
# end

# intern = Intern.new(first_name: 'Ingrid', last_name: 'Smith', salary: 0, active: true)
