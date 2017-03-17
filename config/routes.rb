Rails.application.routes.draw do
  root to: 'etalons#index'


  resources :etalons
  resources :marques
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
