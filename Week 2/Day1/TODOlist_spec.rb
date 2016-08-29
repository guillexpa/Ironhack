require_relative 'TODOlist'
require 'date'

describe Task do

  before :each do
    @task = Task.new("Buy milk")
  end

  describe "complete?" do
    it "returns false if the task is not completed" do
      expect(@task.complete?).to eq(false)
    end
  end

    describe "complete!" do
      it "returns true so the task is completed" do
        expect(@task.complete!).to eq(true)
      end
    end

    describe "created_at" do
      it "returns the date when it was created" do
        expect(@task.created_at).to eq(Date.today)
      end
    end

    describe "update_content" do
      it "changes the content of a task" do
      expect(@task.update_content!("Buy milk")).to eq(@task.content)
      end
    end

end

describe TodoList do
  before :each do
    @todolist = TodoList.new("Guille")
    @task = Task.new("Buy milk")
  end

  describe "add_task" do
    it "adds a task into an array of tasks" do
      expect(@todolist.tasks[0].content).to eq(@task.content)
    end
  end



end
