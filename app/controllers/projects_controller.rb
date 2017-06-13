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

	end


	def show

	end

	def destroy
		
	end

	private

	def project_params
		params.require(:project).permit(:title, :description, :link)
	end

	def set_project
		@project=Project.find(params[:id])
	end
end
