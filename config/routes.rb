Rails.application.routes.draw do
  resources :filmes
  resources :locadoras
root"locadoras#index"
end
