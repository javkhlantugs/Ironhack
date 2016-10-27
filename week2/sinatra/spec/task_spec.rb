require_relative ("../lib/task.rb")
require 'date'
RSpec.describe Task do 
	describe "Task methods" do
		before :each do
		@tsk = Task.new("s")
		end
			it "ID will give ordinal numbers for every task instance" do
			 expect(@tsk.id).to eq (1)
			end
			it "will return uncomplete or tasks" do
				expect(@tsk.completed?).to eq (false)
			end
			it "completed tasks" do
				@tsk.complete!	
				expect(@tsk.completed?).to eq(true)
			end
			it "incompletes tasks" do
				@tsk.make_incomplete!
				expect(@tsk.completed?).to eq(false)
			end
			it "content updating method" do
				expect(@tsk.update_content!("blow a bag")).to eq ("blow a bag")
			end
	end
end

