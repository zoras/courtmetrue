Rails.application.routes.draw do
  resources :courtship_preferences

  resources :profiles
  resources :profile_photos do
    member do
      get "set-as-profile-picture" => "profile_photos#set_as_profile_picture"
    end
  end
  

  post 'contact', to: 'contacts#process_form'
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users, :controllers => {
    registrations: 'registrations',
    sessions: 'sessions'
  }
  resources :users
end
