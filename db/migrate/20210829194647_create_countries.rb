class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.timestamps
    end

    add_index :countries, :name
  end
end
