class KptsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @kpt = @project.kpts.build
  end

  def create
    @project = Project.find(params[:project_id])
    permitted_params = params[:kpt].permit(:name)
    @kpt = @project.kpts.build(permitted_params)

    if @kpt.save
      redirect_to [@project, @kpt], notice: 'KPT was successfully created'
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:project_id])
    @kpt = @project.kpts.find(params[:id])
  end
end
