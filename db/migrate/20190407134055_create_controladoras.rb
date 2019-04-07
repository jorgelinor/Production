class CreateControladoras < ActiveRecord::Migration[5.2]
  def change
    create_table :controladoras do |t|
      t.boolean :exists

      t.timestamps
    end
  end
end
