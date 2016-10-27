require "sinatra"
require "sinatra/reloader"
require_relative ("lib/todolist.rb")
require_relative ("lib/task.rb")

todolist = TodoList.new("jays")

get "/tasks" do
	@instance = todolist.list
	erb (:task_index)
end
get "/new_task" do
	erb (:new_task)
end
post "/create_task" do
	a_task = Task.new (params[:newtask])
	todolist.add_task(a_task)
	redirect("/tasks")
end

post "/complete" do
	id = params[:task_id].to_i
	task = todolist.find_task_by_id(id)
	# if params[:task_id]
	if task.completed? == true
		task.make_incomplete!
	else
		task.complete!
	end	
	redirect("/tasks")
end