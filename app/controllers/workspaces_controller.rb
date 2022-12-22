class WorkspacesController < ApplicationController
    def show
        @workspace = Workspace.first
    end


end