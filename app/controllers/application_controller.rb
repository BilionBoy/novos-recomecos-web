class ApplicationController < ActionController::Base
  before_action :authenticate_user! # Autentica o usuário antes de qualquer ação
  include Pagy::Backend
  include DevisePermittedParameters
  include LayoutByUser
end
