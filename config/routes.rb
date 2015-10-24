Rails.application.routes.draw do
  post 'contact', to: 'contacts#process_form'
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
