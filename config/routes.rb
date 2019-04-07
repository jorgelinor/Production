Rails.application.routes.draw do
  get 'welcome/index'
  get 'articles/index'

  resources :articles

  resources :controladoras do
  	resources :almacens do
  		resources :productos do
  			resources :formulas do
  				resources :costo_indirectos
  				resources :materials do
  					resources :costos
  				end
  			end
  		end
  		resources :materials do
  			resources :costos
  		end
  	end
  	resources :proveedors do
  		resources :materials do
  			resources :costos
  		end
  	end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
