class TimeEntriesController < ApplicationController

	def index
		@my_projects = Project.find(params[:project_id])
		@my_project = @my_projects.time_entries
	end

	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
	end

	def create
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new(
			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date],
			comments: params[:time_entry][:comments])
		if @my_entry.save
			redirect_to project_time_entries_path(@my_project)
		else
			render 'new'
		end
	end

	def edit
		@my_project = Project.find(params[:project_id])
		@my_entry =  @my_project.time_entries.find(params[:id])
	end

	def update
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(entry_params)
		redirect_to '/projects/#{my_project.id}/time_entries'
		else
		render 'edit'
		end
	end
	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
	end
end