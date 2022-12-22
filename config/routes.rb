Rails.application.routes.draw do

  get "home/workspaceVendors"
  get "home/members"
  get "home/index"
  get "workspace_members/index"
  get "workspace_members/show"
  get "workspace_vendors/index"
  
  root "home#index"

  resources :workspaces
  resources :workspace_members
  resources :workspace_vendors
  resources :vendor_transactions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
