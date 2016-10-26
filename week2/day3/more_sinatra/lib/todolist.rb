class TodoList
	attr_accessor :list
	def initialize
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
		@list.find do |the_task|
			the_task.id == task_id
		end
	end
end