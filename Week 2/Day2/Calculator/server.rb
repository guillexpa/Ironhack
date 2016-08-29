# server.rb
require "sinatra"

class Calculator
  def initialize(first_number,second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def add
    @first_number + @second_number
  end

  def substract
    @first_number - @second_number
  end

  def multiply
    @first_number*@second_number
  end

  def divide
    @first_number/@second_number
  end
end

enable(:sessions)


get "/" do
  erb(:add)
end


post "/calculate" do
  operation = params["operation"]
  save = params["save"]
  first = params[:first_number].to_f
  second = params[:second_number].to_f

  if save == "load"
    @num = IO.read('public/save.txt').to_f
  else
  end

  case operation
  when "addition"
    @result = Calculator.new(first, second).add
    char = "+"
  when "substract"
    @result = Calculator.new(first, second).substract
    char = "-"
  when "multiply"
    @result = Calculator.new(first, second).multiply
    char = "x"
  when "divide"
    @result = Calculator.new(first, second).divide
    char = "/"
  end
  @message = "#{first} #{char} #{second} = #{@result}"
  erb(:result)


end

post "/save" do
  saved_value = params["save"]
  IO.write('public/save.txt', saved_value)
  redirect to("/")
end

post "/sessions" do
  text = params["session"]
  session[:saved_value] = text
  redirect("/sessiondisplay")
end

get "/sessiondisplay" do
  @name = session[:saved_value]
  erb(:display)
end

# post "/calculate_add" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = Calculator.new(first, second).add
#    "#{first} + #{second} = #{result}"
# end
#
# post "/calculate_substract" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = Calculator.new(first, second).substract
#   "#{first} - #{second} = #{result}"
# end
#
# post "/calculate_multiply" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = Calculator.new(first, second).multiply
#    "#{first} x #{second} = #{result}"
# end
#
# post "/calculate_divide" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = Calculator.new(first, second).divide
#    "#{first} / #{second} = #{result}"
# end
