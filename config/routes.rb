Rails.application.routes.draw do
  devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions:      'users/sessions',
 }

  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
  resources :users, only: [:show, :edit, :update]

  get 'index' => 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
