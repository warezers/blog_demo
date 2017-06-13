class ProjectsController < ApplicationController
	before_action :set_project, only: [:edit, :show, :destroy, :update]

	def index
		@projects=Project.all.order('created_at desc')
	end

	def new
		@project=Project.new
	end

	def create
		@project=Project.new(project_params)
		 if @project.save
		 	redirect_to @project , notice: "successfully project created"
		 else
		 	render 'new'
		 end	
	end

	def edit

	end

	def update
		if @project.update(project_params)
		   redirect_to @project, notice:" project successfully updated"
		else
			render 'edit'
		end
	end


	def show

	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end

	private

	def project_params
		params.require(:project).permit(:title, :description, :link, :slug)
	end

	def set_project
		@project=Project.friendly.find(params[:id])
	end
end
