class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at desc').all
  end

  def new
    @project = Project.new
  end

  def create
    permitted_params = params[:project].permit(:name)

    @project = Project.new(permitted_params)

    if @project.save
      redirect_to projects_path, notice: 'Project was successfully created'
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
