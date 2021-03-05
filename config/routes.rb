Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'
  scope module: :user do
    resources :users, only: [:show, :edit, :update, :destroy]
    resources :learns
    resources :languages, only: [:index, :create, :destroy]
    resources :learn_times, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
