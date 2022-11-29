class CreateWorkspaceMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :workspace_members do |t|
      t.references :workspace, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title

      t.timestamps
    end
  end
end
