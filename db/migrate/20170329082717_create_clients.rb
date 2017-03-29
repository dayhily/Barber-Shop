class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :client do |t|
      t.text :name
      t.text :phone
      t.text :date_time
      t.text :stylist
      t.text :color
      
      t.timetamps
    end
  end
end
