require 'pry'
class Validator

  def initialize(user, password)
    @user = user
    @pass = password
    @data = {
      "juan"=> {:username => "juandoce", :password => "doce"},
      "pedro"=> {:username => "pedrito", :password => "dos"},
      "manolo"=> {:username => "cabezahuevo", :password => "doscientos"},
      "admin"=> {:username => "admin", :password => "1234"}
    }
  end

  def validation
    @data.each do |key, value|

      binding.pry
      if value[:username] == @user && value[:password] == @pass
        return true
      else
        return false
      end
    end
  end

end
