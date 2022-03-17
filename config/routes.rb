Rails.application.routes.draw do

  get 'home', to: 'static_pages#home'
  devise_for :teachers
  devise_for :students

end
