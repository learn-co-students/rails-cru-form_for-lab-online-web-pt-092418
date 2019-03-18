Rails.application.routes.draw do
  resources :artists, except: [:index, :destroy]
  resources :genres, except: [:index, :destroy]
  resources :songs, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
