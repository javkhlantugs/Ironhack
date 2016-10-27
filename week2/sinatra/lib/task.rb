require 'date'
class Task
	attr_reader :content, :id, :completed
	@@current_id = 1
	def initialize (content)
		@created_at = DateTime.now
		@completed = false
		@content = content
		@id = @@current_id
		@@current_id += 1
	end
	def completed?
		@completed
	end
	def complete!
		@completed = true
	end
	def make_incomplete!
		@completed = false
	end
	def update_content!(new_content)
		@content = new_content
	end
	def show_content
		@content
	end
end
