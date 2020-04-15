Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resource :home, only: [:index]
  resources :tv_show, only:[] do
    put :make_favourite, on: :member
    put :make_unfavourite, on: :member
  end    
end
