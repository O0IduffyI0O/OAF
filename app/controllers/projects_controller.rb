class ProjectsController < ApplicationController
    
    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to projects_path
        else
            flash[:error] = @project.errors.full_messages.join(", ")
            redirect_to new_project_path
        end
    end
    
    def index
    end
    
    def show
        @project = Project.find_by(id: params[:id])
    end
    
    private
        def project_params
            params.require(:project).permit(:name, :contractor, :contact)
        end

end