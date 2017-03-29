class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :phone
      t.text :date_time
      t.text :stylist
      t.text :color
      
      t.timestamps
    end
  end
end

