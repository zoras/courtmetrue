Rails.application.routes.draw do
  resources :courtship_preferences
  resources :profiles
  post 'contact', to: 'contacts#process_form'
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users, :controllers => {
    registrations: 'registrations',
    confirmations: 'confirmations' }
  resources :users
end
