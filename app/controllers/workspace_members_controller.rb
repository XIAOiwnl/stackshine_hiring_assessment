class WorkspaceMembersController < ApplicationController
    def index
        @workspaceMembers = WorkspaceMember.all

        #sort names using first_name alphabetically
        @workspaceMembers = @workspaceMembers.sort_by {|workspaceMember| workspaceMember.first_name}
    end 

    def show
        @workspaceMember = WorkspaceMember.find(params[:id])
    end

    def new
        @workspaceMember = WorkspaceMember.new
    end

    def create

    end

end