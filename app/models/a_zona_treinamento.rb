# frozen_string_literal: true

class AZonaTreinamento < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  has_many :a_unidade_treinamentos

  validates :descricao, presence: true
end
