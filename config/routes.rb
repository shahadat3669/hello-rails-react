Rails.application.routes.draw do
  root 'root#index'

  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      get 'greetings/random', to: 'greetings#random'
    end
  end
end