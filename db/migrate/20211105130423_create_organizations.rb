class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :organizations, [:name], name: :index_organizations_on_name, unique: true
  end
end
