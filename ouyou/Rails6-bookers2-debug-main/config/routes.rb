Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root :to =>"homes#top"
  get "home/about" => "homes#about"
  get "search" => "searches#search"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index,:show,:edit,:update]
  
  resources :users do
    get "daily_posts" => "users#daily_posts"
    resource :relationships, only: [:create, :destroy]
    member do
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
    end
  end
  
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
  
  resources :groups, except: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
