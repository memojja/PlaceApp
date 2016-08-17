Rails.application.routes.draw do


  get 'reservations/create'

  get 'reservations/update'

  get 'reservations/destroy'

  get 'reservations/new'

  devise_for :owners
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "places#index"

  resources :places do
    resources :comments
  end

  resources :categories
  resources :customers

end
