class CreateProveedors < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedors do |t|
      t.string :idProveedor
      t.string :nombre
      t.string :telefono
      t.string :email
      t.references :controladora, foreign_key: true

      t.timestamps
    end
  end
end
