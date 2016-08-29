# server
require 'sinatra'
require_relative 'lib/task.rb'
require_relative 'lib/todolist.rb'


todo_list = TodoList.new("Josh")
todo_list.add_task(Task.new("Pasear a la basura"))
todo_list.add_task(Task.new("Tirar al perro"))

get "/" do

  erb(:taskindex)
end

get "/tasks" do
  @list = todo_list.tasks
  erb(:taskslist) 
end

get "/newtask" do
  erb(:newtask)
end

post "/createtask" do
  todo_list.add_task(Task.new(params["task"]))
  todo_list.save
  redirect("/")
end

post "/complete_task/:id" do
  todo_list.complete_by_id(params[:id].to_i)
  redirect("/tasks")
end
