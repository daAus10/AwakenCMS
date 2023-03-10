Rails.application.routes.draw do
  devise_for :users
  resources :service_view_cards


  # Defines the root path route ("/")
  # root "articles#index"
  # // Author: Bobola Obi
  # // Date: March 03, 2023
  get '/gallery', to: 'gallery_page#galleryIndex'
  get '/services', to: 'service_page#serviceIndex'
  resources :service_items
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
  resources :hero_views

  # // Author: Bobola Obi
  # // Date: February 28, 2023
  # // Description: This adds a new controller called `Canvas` to the AwakenCMS project, with an `index` action that loads data from the `CanvasItem` model.
  root 'canvas#index'

  resources :navbar_views
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



end
