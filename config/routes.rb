Rails.application.routes.draw do

  resources :static_pages
  root to: "static_pages#home"

  get 'student/show'
  get 'teacher_student/new'
  get 'teacher_student/show'
  get 'teacher_student/create'
  get 'lesson/index'
  get 'lesson/show'
  get 'lesson/create'
  get 'home', to: 'static_pages#home'
  get 'accueille', to: 'static_pages#accueille'
  get 'permis_auto', to: 'static_pages#permis_auto'
  get 'permis_moto', to: 'static_pages#permis_moto'
  get 'contact', to: 'static_pages#contact'
  devise_for :students, controllers: {
    registrations: 'students/registrations'
  }

  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations'
  }

end
