class PledgesController < ApplicationController

    def new
        @pledge = Pledge.new
    end

    def show
        @projects = Project.all
        @pledge = Pledge.find(params[:id])
    end

    # def create
    #     @project = Project.find_by(id: params[:pledge][:project_id])
    #     @pledge = Pledge.create(pledge_params)
    #     redirect_to project_path(@project)
    # end

    def create
        @project = Project.find_by(id: params[:pledge][:project_id])
        @pledge = Pledge.new(pledge_params)
        if @pledge.valid?
            @pledge.save
            redirect_to project_path(@project)
        else
            flash[:errors] = @pledge.errors.full_messages
            redirect_to new_pledge_path
        end
    end


    private

    def pledge_params
        params.require(:pledge).permit(:amount, :user_id, :project_id)
    end

end
