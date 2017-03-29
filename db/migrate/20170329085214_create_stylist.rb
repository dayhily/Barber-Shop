class CreateStylist < ActiveRecord::Migration[5.0]
  def change
    #Создание таблицы stylists с полями в БД
    create_table :stylists do |t|
      t.text :stylist_name
           
      t.timestamps #добавление полей дата создания и дата изменения
    end  
    
    #Первоначальное наполнение поля :name таблицы stylists
    Stylist.create :stylist_name => 'Ольга'
    Stylist.create :stylist_name => 'Лидия'
    Stylist.create :stylist_name => 'Трофим'
    Stylist.create :stylist_name => 'Михмех'
  end
end
