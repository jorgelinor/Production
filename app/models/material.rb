class Material < ApplicationRecord
  belongs_to :almacen
  belongs_to :proveedor
  has_many :costos
end
