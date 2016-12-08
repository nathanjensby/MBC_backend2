Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :measurements
  resources :recipes do
    member do
      get 'items'
    end
    member do
      get 'measurements'
    end
  end
  resources :items do
    member do
      get 'recipes'
    end
  end
end
