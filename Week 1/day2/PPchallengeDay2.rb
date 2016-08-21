module Calculate
  def calculate_hourlyEmployees(hourly_rate, hours_worked)
    return hourly_rate * hours_worked
  end

  def calculate_salariedEmployees(salary)
    return salary / 52
  end
end



class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def calculate_salary
    end
end



class HourlyEmployee < Employee
    include Calculate
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end


    def calculate_salary
      calculate_hourlyEmployees(@hourly_rate, @hours_worked)
    end
end



class SalariedEmployee < Employee
  include Calculate
  def initialize (name, email, salary)
    @name = name
    @email = email
    @salary = salary
  end

  def calculate_salary
    calculate_salariedEmployees(@salary)
  end
end



class MultiPaymentEmployee < Employee
  include Calculate
  def initialize (name, email, salary, hourly_rate, hours_worked)
    @name = name
    @email = email
    @salary = salary
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
    if @hours_worked > 40
      return calculate_salariedEmployees(@salary) + calculate_hourlyEmployees(@hourly_rate, @hours_worked)
    else
      return calculate_salariedEmployees(@salary)
    end
  end
end



class Payroll
    def initialize(employees)
        @employees = employees
    end

  def notify_employee(employee)
    puts "Employee #{employee.name} has been notified to #{employee.email} that the salary has been paid"
  end

  def pay_employees
    @employees.each { |employee|
      puts "#{employee.name}'s salary per week is #{employee.calculate_salary}€"
    }
  end

  def total_weekly_expenses
    total = @employees.reduce(0){|sum,x|  sum + x.calculate_salary}
    total = total*1.18
    puts "Weekly expenses: #{total.to_i}€"
  end
end




josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
micaela = HourlyEmployee.new('Micaela', 'micaela@gmail.com', 15, 35)
guille = HourlyEmployee.new('Guille', 'guille@gmail.com', 15, 30)

employees = [josh, nizar, ted, micaela, guille]

week1= Payroll.new(employees)
week1.pay_employees
week1.total_weekly_expenses
puts "----------------------------------"
week1.notify_employee(ted)
