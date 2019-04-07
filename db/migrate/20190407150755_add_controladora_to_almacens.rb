class AddControladoraToAlmacens < ActiveRecord::Migration[5.2]
  def change
    add_reference :almacens, :controladora, foreign_key: true
  end
end
