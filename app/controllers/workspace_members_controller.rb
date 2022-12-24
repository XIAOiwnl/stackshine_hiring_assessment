class WorkspaceMembersController < ApplicationController
    def index
        @workspaceMembers = WorkspaceMember.all

        #sort names using first_name alphabetically
        @workspaceMembers = @workspaceMembers.sort_by {|workspaceMember| workspaceMember.first_name}
    end 

    def show
        @workspaceMember = WorkspaceMember.find(params[:id])
    end


    #create CRUD functions below:
    def new
        @workspaceMember = WorkspaceMember.new
    end

    def create
        @workspaceMember = WorkspaceMember.new(member_params)
        if @workspaceMember.save
            redirect_to workspace_members_path
        else
            render :new
        end
    end

    private

    def member_params
        params.require(:workspace_member).permit(:first_name, :last_name, :email, :title)
    end

end