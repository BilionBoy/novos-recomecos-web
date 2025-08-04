module LayoutByUser
  extend ActiveSupport::Concern

  included do
    layout :set_layout_by_user
  end

  private
  
  def set_layout_by_user
    return "devise_application" if devise_controller?
  
    # Usa layout personalizado para o portal (landing page)
    return "home_application" if controller_name == "home"
  
    if controller_path.start_with?("store/")
      return "home_application"
    end
  
    if current_user
      case current_user.g_tipo_usuario.descricao
      when 'ADMIN'
        "application"
      when 'PROFESSOR'
        "professor_application"
      else
        "home"
      end
    end
  end

end