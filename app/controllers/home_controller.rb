class HomeController < ApplicationController
  def index
    @workspace = Workspace.find(1)
  end

  def workspaceVendors
  end

  def members
  end
end
