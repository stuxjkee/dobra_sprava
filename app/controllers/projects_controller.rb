class ProjectsController < ApplicationController

  load_and_authorize_resource


  def index
  	@projects = Project.order('created_at DESC')
  end

  def new
  	@project = Project.new
  end
  def create
  	@project = Project.new(project_params)
  	@project.current = 0
  	if @project.save
  		redirect_to projects_path, notice: "The project #{@project.title} has been uploaded."
  	else
  		render "new"
  	end
  end

  def show
  	@project = Project.find(params[:id])
  end


  private
  def project_params
  	params.require(:project).permit(:title, :description, :content, :picture, :target)
  end
end
