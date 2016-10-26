require 'date'~
class Task
	attr_reader :content, :id, :completed
	@@current_id = 1
	def initialize (content)
		@created_at = DateTime.now
		@completed = "uncomplete"
		@content = content
		@id = @@current_id
		@@current_id += 1
	end
	def completed?
		if @completed == "complete"
			true
		else
			false
		end
	end
	def complete!
		@completed = "complete"
	end
	def make_incomplete!
		@completed = "uncomplete"
	end
	def update_content!(new_content)
		@content = new_content
	end
end
