class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        find_project
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to project_path(@project)
    end

    private

    def find_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:name, :goal, :amount)
    end
end
