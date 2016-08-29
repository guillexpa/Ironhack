require 'yaml/store'
require 'date'


class Task
  attr_reader :content, :id, :created_at
  @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @status = false
    @created_at = Date.today
    @updated_at = nil
  end

  def complete?
    @status
  end

  def complete!
    @status = true
  end

  def update_content!(newcontent)
    @updated_at = Date.today
    @content = newcontent
  end
end




class TodoList

  attr_reader :tasks, :todo_store
  def initialize (user)
    @tasks = []
    @user = user
    @todo_store = YAML::Store.new('tasks.yml')
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
end



todo_list = TodoList.new("Josh")
task = Task.new("Walk the dog")
task2 = Task.new("Buy the milk")
task3 = Task.new("Make my todo list into a web app")

todo_list.add_task(task)
todo_list.add_task(task2)
todo_list.add_task(task3)

puts todo_list.tasks[0].content
puts todo_list.tasks[1].content

todo_list.delete_task(1)

puts todo_list.todo_store


todo_list.save
puts todo_list.todo_store
