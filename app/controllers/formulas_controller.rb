class FormulasController < ApplicationController
	def new
		@controladora = Controladora.find(1)
		@materiales = @controladora.almacen.materials
	end
end
