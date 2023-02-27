Rails.application.routes.draw do

  # // Author: Bobola Obi
  # // Date: February 28, 2023
  # // Description: This adds a new controller called `Canvas` to the AwakenCMS project, with an `index` action that loads data from the `CanvasItem` model.
  root 'canvas#index'

  resources :navbar_views
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
