Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/webhook_circleci', to: 'webhook#circleci'
  # Defines the root path route ("/")
  root "pages#welcome"
end
