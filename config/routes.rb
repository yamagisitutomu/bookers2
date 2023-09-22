Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books do
   resources :book_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :update,:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end