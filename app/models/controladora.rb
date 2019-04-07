class Controladora < ApplicationRecord
	has_one :almacen, dependent: :destroy
	has_many :proveedors, dependent: :destroy

  def exists?
    true
  end
end
