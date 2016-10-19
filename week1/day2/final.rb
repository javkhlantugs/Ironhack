require_relative ("employment.rb")
require_relative("payroll.rb")

employees_array = [
jay = HourlyEmployee.new("Jay", "example@gmail.com", 15, 30),
xiomi = HourlyEmployee.new("Xiomi", "example@yahoo.com", 15, 40),
nizar = SalaryEmployee.new("Nizar", "bla@gmail.com", 70000),
ted = SalaryEmployee.new("Ted", "blah@yahh", 65000),
josh = MultiPaymentEmployee.new("Josh", "example@hotmail.com", 60000, 50, 55)
	]
payroll = Payroll.new(employees_array)
payroll.pay_employees
payroll.notify_employee
