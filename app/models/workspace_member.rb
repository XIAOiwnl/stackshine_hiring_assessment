class WorkspaceMember < ApplicationRecord
  belongs_to :workspace
  has_person_name
end
