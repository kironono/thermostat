class CreateClientKeys < ActiveRecord::Migration[6.1]
  def change
    create_table :client_keys do |t|
      t.string :name, null: false
      t.boolean :is_active, default: true
      t.string :public_key, null: false

      t.timestamps
    end
    add_index :client_keys, [:public_key], name: :index_client_key_on_public_key, unique: true
  end
end
