PostitTemplate::Application.routes.draw do
  root to: 'posts#index'


  # get '/posts', to: 'posts#index'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/new', to: 'posts#new'
  # post '/posts', to: 'posts#create'
  # get '/posts/:id/edit', to: 'posts#edit'
  # patch '/posts/:id', to: 'posts#update'

  resources :posts, except: [:destroy] do 
    resources :comments, only: [:create]
  end
end
