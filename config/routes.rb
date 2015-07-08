Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants do
      resources :visits
      resources :locations
    end
  end

  resources :restaurants do
    resources :visits
    resources :locations
  end
  root "home#index"
end

