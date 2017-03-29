class CreateClients < ActiveRecord::Migration[5.0]
  def change
    #Создание таблицы clisents с полями в БД
    create_table :clients do |t|
      t.text :name
      t.text :phone
      t.text :date_time
      t.text :stylist
      t.text :color
      
      t.timestamps #добавление полей дата создания и дата изменения
    end
  end
end

