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

get "/complete" do
end