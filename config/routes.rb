Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :games, only: [:index, :show]
  resources :spoilery_posts, only: [:index, :show]
  resources :no_spoilers_posts, only: [:index, :show]
end
