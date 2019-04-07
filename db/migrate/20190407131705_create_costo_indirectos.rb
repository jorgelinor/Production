class CreateCostoIndirectos < ActiveRecord::Migration[5.2]
  def change
    create_table :costo_indirectos do |t|
      t.string :idRequisitoIndirecto
      t.string :nombreRequisitoInd
      t.text :descripcion
      t.float :cantidadNecesaria
      t.float :costoPorUnidad
      t.string :unidadDeMedida
      t.references :formula, foreign_key: true

      t.timestamps
    end
  end
end
