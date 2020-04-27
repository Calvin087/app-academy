require "employee"

class Startup
    
    attr_accessor :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(startup)
        self.funding > startup.funding
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "Title is invlaid, Faker"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        moneyOwed = @salaries[employee.title]
        if @funding >= moneyOwed
            employee.pay(moneyOwed)
            @funding -= moneyOwed
        else
            raise "Not enough funding, sorry. Do you accept Shares?"
        end
    end

    def payday
        @employees.each do |employee|
            self.pay_employee(employee)
        end
    end

    def average_salary
        sum = 0

        @employees.each do |employee|
            sum += @salaries[employee.title]
        end

        return sum / @employees.length * 1.0
    end

    def close
        @funding = 0
        @employees = []
    end

    def acquire(startup)
        @funding += startup.funding
        @employees += startup.employees
        startup.close
        @salaries = startup.salaries.merge(@salaries)
    end
end
