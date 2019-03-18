Rails.application.routes.draw do
  root 'home#top'
  # get 'inquiry/index'
  # get 'inquiry/confirm'
  # get 'inquiry/thanks'
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


 
  get "search" => "home#search"
  get "/tag_search/:tag_name" =>'posts#tag_search', as: 'tag_search'
  get "inquiry" => "inquiry#index" #入力画面
  post "inquiry/confirm" => "inquiry#confirm" #確認画面
  post "inquiry/thanks" => "inquiry#thanks" #送信完了画面s


end
