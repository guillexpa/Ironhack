require 'yaml/store'

class TodoList

  attr_reader :tasks, :todo_store
  def initialize (user)
    @tasks = []
    @user = user
    @todo_store = YAML::Store.new('./public/tasks.yml')
  end

  def add_task(task)
    @tasks.push(task)
  end

  def delete_task(index)
    @tasks.delete_if{|task| task.id == index}
  end

  def find_task_by_id(index)
    @tasks.select{|task| task.id == index}
  end

  def complete_by_id(index)
    @tasks.find{|task| task.id == index }.complete!
  end

  def sort_by_created(string)
    if string == 'ASC'
      sorted_tasks = @tasks.sort{|task1, task2| task1.created_at <=> task2.created_at}
    else string == 'DESC'
      sorted_tasks = @tasks.sort{|task1, task2| task2.created_at <=> task1.created_at}
    end
  end

  def save
    @todo_store.transaction do
      @todo_store[@user] = @tasks
    end
  end

  def load
    puts @todo_store.inspect
  end
end

hola = TodoList.new("jarl")
hola.add_task("Vender zapatillas")
