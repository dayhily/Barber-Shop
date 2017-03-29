class CreateStylist < ActiveRecord::Migration[5.0]
  def change
    create_table :stylists do |t|
      t.text :name
           
      t.timestamps
    end  

    Stylist.create :name => 'Ольга'
    Stylist.create :name => 'Лидия'
    Stylist.create :name => 'Трофим'
    Stylist.create :name => 'Михмех'
  end
end
