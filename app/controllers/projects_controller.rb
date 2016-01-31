class ProjectsController < ApplicationController

  load_and_authorize_resource


  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to @project 
    else
      render 'edit'
    end
  end

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

  def destroy 
    Project.delete(params[:id])
    redirect_to '/projects'
  end

  private
  def project_params
  	params.require(:project).permit(:title, :description, :content, :picture, :target)
  end
end
