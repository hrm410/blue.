Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	member do
  		get :following, :followers
  	end
  end

  resources :relationships, only: [:create, :destroy]

  resources :posts do
  	resources :post_comments, only: [:create, :destroy]
  	resource :likes, only: [:create, :destroy]
  end


  get "top" => "home#top"
  get "search" => "home#search"
  get "/tag_search/:tag_name" =>'posts#tag_search', as: 'tag_search'

end
