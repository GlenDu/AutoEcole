Rails.application.routes.draw do

  get 'home', to: 'static_pages#home'
  get 'accueille', to: 'static_pages#accueille'

  devise_for :teachers
  devise_for :students

end
