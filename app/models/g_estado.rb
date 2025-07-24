# frozen_string_literal: true

class GEstado < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelo
  has_many :g_cidades

  validates :nome_fantasia, presence: true, uniqueness: true
end
