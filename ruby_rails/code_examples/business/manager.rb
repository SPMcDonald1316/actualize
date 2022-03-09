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