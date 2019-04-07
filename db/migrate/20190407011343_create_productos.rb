class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :idProducto
      t.string :nombre
      t.float :porcentajeGanancia
      t.references :almacen, foreign_key: true

      t.timestamps
    end
  end
end
