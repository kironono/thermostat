class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.belongs_to :organization
      t.string :name, null: false
      t.timestamps
    end
    add_index :projects, [:organization_id, :name], name: :index_projects_on_name, unique: true
  end
end
