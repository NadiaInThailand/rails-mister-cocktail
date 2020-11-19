Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/edit'
  # get 'doses/update'
  # get 'doses/destroy'
  # get 'ingredients/index'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # get 'ingredients/edit'
  # get 'ingredients/update'
  # get 'ingredients/destroy'
  #get 'cocktails/index'
  #get 'cocktails/show'
  #get 'cocktails/new'
  #get 'cocktails/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :ingredients, only: [:index, :new, :create, :edit, :update, :destroy]

  resources :doses, only: [:destroy]
end
