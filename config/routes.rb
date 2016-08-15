Rails.application.routes.draw do


  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "places#index"

  resources :places do
    resources :comments
  end

  resources :categories
  resources :customers

end
