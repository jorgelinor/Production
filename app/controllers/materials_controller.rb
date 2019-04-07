class MaterialsController < ApplicationController
	def new
	end

	def index
		@controladora = Controladora.find(1)
	end

	def create
		article_params[:cantidadDisponible] = article_params[:cantidadDisponible].to_f
		article_params[:fechaDeVencimiento] = article_params[:fechaDeVencimiento].to_date()
		
		@controladora = Controladora.find(1)
		@almacen = @controladora.almacen
		@material = @almacen.materials.create(article_params)
		@controladora.save

		render 'new'
	end

	private
	    def article_params
	      params.require(:material).permit(:idMaterial, :codigoMaterial, :nombre, :descripcion, :estatus, :cantidadDisponible, :unidadDeMedida, :fechaDeVencimiento)
	    end
end
