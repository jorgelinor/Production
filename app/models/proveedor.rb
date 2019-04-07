class Proveedor < ApplicationRecord
  belongs_to :controladora
  has_many :materials, dependent: :destroy
end
