Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  root 'landing#index'

  # limiting user's ability to destroy any resources as of now
  # main_areas can only be created on the backend

  resources :users,       except: :destroy
  resources :main_areas,  only: [:index, :show]
  resources :sub_areas,   except: :destroy
  resources :bproblems,   except: :destroy
  # resources :first_ascents

  # removing ability to update as not to over-write existing photos
  # generates photos controller
  resources :bproblems do
    resources :photos, only: [:create, :destroy]
  end

end
