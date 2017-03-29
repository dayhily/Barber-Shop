class CreateStylist < ActiveRecord::Migration[5.0]
  def change
    #Создание таблицы stylists с полями в БД
    create_table :stylists do |t|
      t.text :name
           
      t.timestamps #добавление полей дата создания и дата изменения
    end  
    
    #Первоначальное наполнение поля :name таблицы stylists
    Stylist.create :name => 'Ольга'
    Stylist.create :name => 'Лидия'
    Stylist.create :name => 'Трофим'
    Stylist.create :name => 'Михмех'
  end
end
