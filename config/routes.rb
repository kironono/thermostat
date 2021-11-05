Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :organizations, only: %i[show], param: :name do
    resources :projects, only: %i[index show], param: :name
  end
end
