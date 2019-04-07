class Almacen < ApplicationRecord
	belongs_to :controladora
	has_many :productos, dependent: :destroy
	has_many :materials, dependent: :destroy
end
