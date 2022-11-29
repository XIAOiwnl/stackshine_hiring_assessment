class Workspace < ApplicationRecord
  has_many :workspace_members
  has_many :workspace_vendors

  enum status: {
         active: 0,
         inactive: 1,
       }
end
