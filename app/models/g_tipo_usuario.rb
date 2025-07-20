# frozen_string_literal: true

class GTipoUsuario < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  has_many :users

  validates :descricao, presence: true
end
