Rails.application.routes.draw do
  root 'tops#index'
  resources :tops, only: [:index] do
    collection do
      get :company
      get :biography
      get :price
    end
  end

  resources :contacts, only: [:new, :create] do
    collection do
      post 'confirm'
    end
  end
end
