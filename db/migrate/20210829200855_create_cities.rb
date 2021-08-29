class CreateCities < ActiveRecord::Migration[6.0]
  def change
    columns = ["city", "city_ascii", "lat", "lng", "country", "iso2", "iso3", "admin_name", "capital", "population"]
    create_table :cities do |t|
      columns.each do |col|
        t.string col.to_sym
      end
      t.timestamps
    end

    add_index :cities, :city
    add_index :cities, :country
  end
end
