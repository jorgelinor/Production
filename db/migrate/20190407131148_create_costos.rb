class CreateCostos < ActiveRecord::Migration[5.2]
  def change
    create_table :costos do |t|
      t.string :idCosto
      t.float :monto
      t.date :ultimaFechaUtilizado
      t.boolean :actual
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
