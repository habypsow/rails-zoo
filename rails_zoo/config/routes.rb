Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'animals#index'
  get 'animals/index'
  get '/animals', to: 'animals#index'

  get '/animals/new', to: 'animals#new', as: 'new_animal'
  post '/animals', to: 'animals#create'

  get '/animals/:id', to: 'animals#show', as: 'animal'

  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch 'animals/:id', to: 'animals#update'



end
