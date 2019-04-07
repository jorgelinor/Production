class ControladorasController < ApplicationController
  def index
  	# @controladora = Controladora.new()
  	# @controladora.save
  	@controladoras = Controladora.all
  end

  def show
  	@controladora = Controladora.find(params[:id])

  	# @almacen = Almacen.new(controladora_id: @controladora.id)
  	# @controladora.almacen = @almacen
  end
end
