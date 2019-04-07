class ProductosController < ApplicationController
	def new
		@controladora = Controladora.find(1)
	end

	def index
		@productos = Productos.all
	end
end
