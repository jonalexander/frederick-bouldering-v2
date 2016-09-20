Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  root 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :bproblems, :sub_areas, :main_areas, :first_ascents, :photos, :tests
end
