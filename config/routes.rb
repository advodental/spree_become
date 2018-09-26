Spree::Core::Engine.add_routes do
  namespace :admin do
     resources :users do
       get :switch_session, on: :collection
     end
   end
end
