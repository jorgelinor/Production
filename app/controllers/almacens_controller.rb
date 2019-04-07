class AlmacensController < ApplicationController
	def show
		@almacen = Almacen.find(params[:id])
		@controladora = Controladora.find(@almacen.controladora_id)
	end
end
