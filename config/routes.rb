Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/parties", to: "parties#index"
  # get "/parties/:id", to: "parties#show", as: "party"
  resources :parties
end
