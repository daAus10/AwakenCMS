Rails.application.routes.draw do
  resources :contacts
  resources :hero_views

  resources :employee_roles

  resources :employees do
    post 'assign_roles', on: :member
  end

  resources :appointments do
    member do
      patch :assign_employee
    end
  end


  get 'cart', to:'kart#show'
  post 'kart/add', to: 'kart#add'
  delete 'kart/remove/:id', to: 'kart#remove', as: :kart_remove

  get '/editor', to: 'appointments#index'
  devise_for :users
  resources :service_view_cards


  # Defines the root path route ("/")
  # root "articles#index"
  # // Author: Bobola Obi
  # // Date: March 03, 2023
  get '/gallery', to: 'gallery_page#galleryIndex'
  get '/services', to: 'service_page#serviceIndex'

  # // Author: Bobola Obi
  # // Date: March 03, 2023
  # // Time: 8:11pm
  # // Description: This adds a new controller called `Canvas` to the AwakenCMS project, with an `index` action that loads data from the `CanvasItem` model.
  resources :gallery_image_posts
  resources :contact_items
  resources :contact_types
  resources :appointments
  resources :roles
  resources :employees
  resources :hot_new_views
  resources :footer_views
  resources :map_views
  resources :gallery_views
  resources :service_categories
  resources :about_views
  resources :product_categories
  resources :products
  resources :service_items
  resources :review_views

  # // Author: Bobola Obi
  # // Date: February 28, 2023
  # // Description: This adds a new controller called `Canvas` to the AwakenCMS project, with an `index` action that loads data from the `CanvasItem` model.
  root 'canvas#index'

  resources :navbar_views
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Catch-all route
  # match '*path', to: 'application#not_found', via: :all


end
