Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :users do
      get :switch_session, on: :collection
    end
  end

  devise_scope :spree_user do
    get '/restore_session' => 'user_sessions#restore_session', :as => :restore_session
  end
end
