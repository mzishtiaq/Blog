Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles do
    resources :comments
  end

  resources :subscribers do
    get :unsubscribe, on: :member
  end
  
end
