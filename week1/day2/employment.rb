module SalaryCalculator
	def calculate
		@salary/52
	end
end


class Employee
	attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	weekly_salary = @hourly_rate * @hours_worked
    end
end

class SalaryEmployee < Employee
	include SalaryCalculator
	def initialize (name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end
	def calculate_salary
		calculate
	end
end

class MultiPaymentEmployee < Employee
	include SalaryCalculator
	def initialize (name, email, salary, extrapay, totalhours)
		@name = name
		@email = email
		@salary = salary
		@extrapay = extrapay
		@totalhours = totalhours
	end

	def calculate_salary
		if @totalhours > 40 
			extrahours = @totalhours - 40
			extrapayment = @extrapay * extrahours
			totalsalary = calculate + extrapayment
		else
			weekly_salary = calculate
		end
	end


end
