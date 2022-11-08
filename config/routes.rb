Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/articles', to: 'articles#index', as: :articles
  get '/articles/:id', to: 'articles#show', as: :article

  get '/articles/:id/edit', to: 'articles#edit', as: :edit
  patch '/articles/:id', to: 'articles#update'

  get '/articles/new', to: 'articles#new', as: :new
  post '/articles', to: 'articles#create'

  delete '/articles/:id', to: 'articles#destroy', as: :delete

end
