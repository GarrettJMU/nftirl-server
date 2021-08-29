class BackfillCities < ActiveRecord::Migration[6.0]
  def change
    add_reference :cities, :countries
  end
end
