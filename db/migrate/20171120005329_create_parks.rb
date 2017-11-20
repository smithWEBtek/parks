class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string  :state_id
      t.string  :lat_long
      t.text    :description
      t.string  :designation
      t.string  :park_code
      t.string  :api_id
      t.text    :directions_info
      t.string  :directions_url
      t.string  :full_name
      t.string  :url
      t.text    :weather_info
      t.string  :name

      t.timestamps
    end
  end
end
