Rails.application.routes.draw do

  devise_for :users
  resources :static_pages
  root to: "static_pages#home"

  get 'lesson/index'
  get 'lesson/show'
  post 'lesson/create'
  get 'lesson/new'
  get 'home', to: 'static_pages#home'
  get 'accueille', to: 'static_pages#accueille'
  get 'permis_auto', to: 'static_pages#permis_auto'
  get 'permis_moto', to: 'static_pages#permis_moto'
  get 'contact', to: 'static_pages#contact'

end
