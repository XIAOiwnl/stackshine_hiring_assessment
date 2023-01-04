class WorkspaceVendorsController < ApplicationController
    def index
        @workspaceVendors = WorkspaceVendor.where(workspace_id: "1")

        #sort names alphabetically
        @workspaceVendors = @workspaceVendors.sort_by {|workspaceVendor| workspaceVendor.name}
    end

    def show
        @workspaceVendor = WorkspaceVendor.find(params[:id])

        #workspace_vendor_id as a condition
        @vendorTransactions = VendorTransaction.where("workspace_vendor_id = ?", params[:id])
    
    end
end