require_relative("../lib/todolist.rb")
require_relative("../lib/task.rb")
RSpec.describe TodoList do
	describe "methods" do
		before :each do
		@list = TodoList.new	
		end
		it "add a task to method" do
			expect(@list.add_task(tsk = Task.new("do sth"))).to eq ([tsk])
		end
		it "returns task corresponding the Id" do
			expect(@list.find_task_by_id(1)).to eq (nil)
		end
	end
end