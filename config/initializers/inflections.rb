# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'user',           'users'
  inflect.irregular 'g_tipo_usuario', 'g_tipo_usuarios'
  inflect.irregular 'g_estado',       'g_estados'
  
end
