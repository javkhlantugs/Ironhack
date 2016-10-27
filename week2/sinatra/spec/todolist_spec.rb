require_relative("../lib/todolist.rb")
require_relative("../lib/task.rb")
RSpec.describe TodoList do
	describe "methods" do
		before :each do
		@list = TodoList.new("jays")	
		end
		it "add a task to method" do
			expect(@list.add_task(tsk = Task.new("do sth"))).to eq ([tsk])
		end
		it "returns task nil" do
			expect(@list.find_task_by_id(1)).to eq (nil)
		end
		it "return task corresponding to id" do
			a_task = Task.new ("do sth")
			@list.add_task(a_task)
			expect(@list.find_task_by_id(a_task.id)).to eq (a_task)
		end
	end
end