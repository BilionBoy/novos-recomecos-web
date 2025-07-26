# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'user',                  'users'
  inflect.irregular 'g_tipo_usuario',        'g_tipo_usuarios'
  inflect.irregular 'g_estado',              'g_estados'
  inflect.irregular 'g_cidade',              'g_cidades'
  inflect.irregular 'a_zona_treinamento',    'a_zona_treinamentos'
  inflect.irregular 'a_unidade_treinamento', 'a_unidade_treinamentos'
  inflect.irregular 'a_atleta',              'a_atletas'
  
end
