class Task
	attr_reader :content, :id
	def initialize (content)
		@content = content
		@id = @@current_id
		@@current_id += 1
	end
end
