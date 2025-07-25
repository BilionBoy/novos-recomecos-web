Rails.application.routes.draw do
  resources :a_atletas
  devise_for :users, controllers: {  registrations: 'users/registrations',  sessions: 'users/sessions' }  
  root 'g_admin#index'
  get  "g_admin/index"
  
  # Rotas Scaffold
  resources :a_zona_treinamentos
  resources :a_unidade_treinamentos
  resources :a_sexos
  resources :g_tipo_usuarios
  resources :g_estados
  resources :g_cidades

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
end
