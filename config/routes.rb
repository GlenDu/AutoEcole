Rails.application.routes.draw do

  get 'timeslots/index'
  get 'timeslots/new'
  post 'timeslots/create'
  get 'teacher/index'
  get 'teacher/show'
  get 'teacher/new'
  get 'student/index'
  get 'student/show'
  namespace :admin do
    resources :students, only: [:new, :edit, :create, :destroy, :update, :index]
    resources :calendar, only: [:new, :edit, :create, :destroy, :update]
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :static_pages
  root to: "static_pages#home"

  resources :lesson, only: [:create]
  get 'calendar/index'
  post 'calendar/create'
  get 'calendar/new'
  get 'calendar/show'
  get 'home', to: 'static_pages#home'
  get 'accueille', to: 'static_pages#accueille'
  get 'permis_auto', to: 'static_pages#permis_auto'
  get 'permis_moto', to: 'static_pages#permis_moto'
  get 'contact', to: 'static_pages#contact'

end
