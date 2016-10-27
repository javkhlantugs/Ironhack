require_relative ("task.rb")
class TodoList
	attr_reader :list
	def initialize(nam)
	@name = nam
	@list = []
	end
	def add_task(task)
		@list.push(task)
		@list
	end
	def delete_task (task_id)
		@list.delete_if do |the_task|
			the_task.id == task_id
			end
	end
	def find_task_by_id(task_id)
		found_task = @list.find do |the_task|
			the_task.id == task_id
			end
		if found_task == nil
				nil
		else
			found_task
		end
	end
	def sort_tasks
		@list.sort_by do |the_task|
			the_task.created_at
			end
	end 
end
