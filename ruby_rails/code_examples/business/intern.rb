class Intern < Employee
  include EmailReportable
end

intern = Intern.new(first_name: 'Ingrid', last_name: 'Smith', salary: 0, active: true)

intern.send_report