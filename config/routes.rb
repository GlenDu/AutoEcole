Rails.application.routes.draw do

  get 'home', to: 'static_pages#home'
  get 'accueille', to: 'static_pages#accueille'
  get 'permis_auto', to: 'static_pages#permis_auto'


  devise_for :teachers
  devise_for :students

end
