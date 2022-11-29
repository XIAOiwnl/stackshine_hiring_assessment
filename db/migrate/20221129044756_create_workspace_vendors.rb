class CreateWorkspaceVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :workspace_vendors do |t|
      t.references :workspace, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :website
      t.string :domain

      t.timestamps
    end
  end
end
