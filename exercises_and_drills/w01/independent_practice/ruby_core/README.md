## Exercises: Ruby Core

We are going to practice some core Ruby and building classes. We will review syntax and terminology along the way. Do this exercise in the ruby_core_solution.rb file (in this directory). 

### Starter Code

Use this starter code (our employee class). Copy and paste it into the ruby_core_solution.rb file:
 
```ruby
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
```

**Remember:** 
- `Employee` is a class, `employee1` is an instance of that class. 
- `@first_name` is an instance variable. 
- `print_into` is an instance method.
- The `initialize` method gets called automatically whenever a new instance of the class is created.
- Instance variables are not forgotten like regular variables in a method, but they are only available inside the class.

### Exercises

1. Create a new instance method in your class called `full_name`. It should return the first name combined with the last name. Also, if the last name ends with the letter s, it should add an “Esquire” at the end. 
    * `employee1.full_name` should return “Majora Carter”
    * `employee2.full_name` should return “Danilo Campos, Esquire”

2. Rewrite the initialize method to provide default values if they are missing from the options hash.

3. Create another instance variable for your Employee class called `email`. If the initialize method does not recieve an email attribute, have the default value mash together the first and last name and add "@gmail.com" to the end. Don't forget to add the email to the attr_reader and attr_writer. Now, employee1.email should return `MajorCarter@gmail.com`.


#### Stretch Challenges (optional)

* Create 100 employees and store them in an array (make a loop!). Loop through each employee and display each of their full names.
* Look up attribute accessor (attr_accessor) and modify the code to use it! 


#### Deliverable

Write your solution in the ruby_core_solution.rb file and push to your branch to github! 

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
