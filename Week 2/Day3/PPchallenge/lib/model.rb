require 'pry'

class PasswordChecker

  def check_password(email, password)
    check_length(password) && check_case(password) && check_upcase(password) && check_email(email, password)
  end

  def check_length(password)
    if password.size <= 7
      return false
    else
      return true
    end
  end

  def check_case(password)
    if password.match(/[a-zA-Z]/) && password.match(/\d/) && password.match(/\W/)
      return true
    else
      return false
    end
  end


    def check_upcase(password)
      if password.match(/[a-z]/) && password.match(/[A-Z]/)
  			return true
  		else
  			return false
  		end

	end


  def check_email(email, password)

    array = email.split('@')
    mail = array[0]
    arraytwo = array[1].split('.')
    domain = arraytwo[0]

    if password.include?(mail)
      return false
    elsif password.include?(domain)
      return false
    else
      return true
    end
  end
end
