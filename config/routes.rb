Rails.application.routes.draw do
  resources :kinds
  resources :contacts
 #get 'contacts', to: "contact#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
