class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :idMaterial
      t.string :codigoMaterial
      t.string :nombre
      t.text :descripcion
      t.string :estatus
      t.float :cantidadDisponible
      t.string :unidadDeMedida
      t.date :fechaDeVencimiento
      t.references :almacen, foreign_key: true
      t.references :proveedor, foreign_key: true

      t.timestamps
    end
  end
end
