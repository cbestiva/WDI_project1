SampleProjectApp::Application.routes.draw do

  # get "comments/create"
  # get "sessions/new"
  # get "sessions/destroy"
  # get "users/new"
  # get "users/show"
  # get "users/create"
  resources :users, :sessions

    resources :markets do
      resources :comments, :only => [:create, :destroy]
    end
  
  root to: 'markets#index'

  get '/sf_farmers_market_guide', to: 'markets#index', as: :index
  
  get '/sf_farmers_market_guide/list', to: 'markets#all_markets', as: :all_markets

  get '/sf_farmers_market_guide/:id', to: 'markets#show', as: :show

  # post'/sf_farmers_market_guide/:id/comments', to: 'comments#create', as: :market_comments

  # delete 'sf_farmers_market_guide/:id/comments/:comment_id/destroy', to: 'comments#destroy'


  get '/signup', to: 'users#new'

  get '/signout', to: 'sessions#destroy', via: :delete

  get '/signin', to: 'sessions#new'

end
