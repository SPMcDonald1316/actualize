module Actualize
  class Manager < Employee
    attr_reader :employees

    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    include EmailReportable

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
  end
end