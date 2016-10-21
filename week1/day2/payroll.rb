require 'date'
class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employee()
        today = Date.today
        today.tuesday?
        	@employees.each do |employee|
        	puts "Emailed to #{employee.email}. You've been paid"
     		end
   
  	end
  def pay_employees
  	@employees.each do |employee|
  		totalpayment = employee.calculate_salary * 0.82
  		puts "#{employee.name} is getting #{totalpayment.round(2)}"
  	end
  		total_pay = @employees.reduce(0) do |sum, x|
  			sum + x.calculate_salary
  		end
  		puts "The total payroll for the week is #{(total_pay * 0.82).round(2)}$"
  end


end
