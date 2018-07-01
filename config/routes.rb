Rails.application.routes.draw do
  get 'home/index'
  resources :events
  resources :photos do
    resources :comments
  end

  resources :events do
    resources :comments
  end

  resources :articles do
    resources :comments
  end

  root to: 'home#index'
end
