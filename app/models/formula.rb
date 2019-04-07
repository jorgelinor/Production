class Formula < ApplicationRecord
	belongs_to :producto
	has_many :costo_indirectos, dependent: :destroy
	has_many :materials, dependent: :destroy
end
