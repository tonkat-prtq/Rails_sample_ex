Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
  root 'contacts#new'
  resources :contacts, only: [:new, :create]
end
