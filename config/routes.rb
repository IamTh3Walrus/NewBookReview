Rails.application.routes.draw do
  devise_for :users
  # Nests the reviews inside of the books route.
  # Resourceful route adds index, show, new edit, update and destroy in one line of code.
  resources :books do
  resources :reviews
  end
  root 'books#index'
end
