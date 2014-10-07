Rails.application.routes.draw do
  resources :restaurants do
    resources :visits
  end
  root "home#index"
end

