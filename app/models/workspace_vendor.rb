class WorkspaceVendor < ApplicationRecord
  belongs_to :workspace
  has_many :vendor_transactions
end
