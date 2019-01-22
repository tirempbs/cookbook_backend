Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, :ingredients, :users, :cookbooks
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/create', to: 'users#create'
      post '/search/:q', to: 'recipes#search'
    end
  end
end
