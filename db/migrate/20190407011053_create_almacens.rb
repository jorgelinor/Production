class CreateAlmacens < ActiveRecord::Migration[5.2]
  def change
    change_table :almacens do |t|
      t.references :controladora

      t.timestamps
    end
  end
end
