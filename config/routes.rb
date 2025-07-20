Rails.application.routes.draw do
  devise_for :users, controllers: {  registrations: 'users/registrations',  sessions: 'users/sessions' }  
  resources :g_tipo_usuarios
  root 'g_admin#index'
  get  "g_admin/index"

  # Rotas Scaffold

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
end
