Rails.application.routes.draw do
  

  resources :tenants
  resources :estates do
  	#resources:estate_comments
  end
  resources :photos

  get 'welcome/index'
  get "/pages/:page" => "pages#show"

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

