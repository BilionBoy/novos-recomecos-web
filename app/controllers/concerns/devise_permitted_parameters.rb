module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf, :g_tipo_usuario_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :cpf, :g_tipo_usuario_id])
  end
end
