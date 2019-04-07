class Producto < ApplicationRecord
  belongs_to :almacen
  has_one :formula, dependent: :destroy
end
