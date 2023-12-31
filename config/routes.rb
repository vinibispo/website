require "sidekiq/web"
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
  match "404", to: "errors#not_found", via: :all
  get "resume" => "resume#show", as: :resume
  get "contact" => "contact#show", as: :contact
  post "contact" => "contact#create"

  mount Sidekiq::Web => "/sidekiq"

  resources :projects, only: [:index, :show]


  # Defines the root path route ("/")
  # root "posts#index"
end
