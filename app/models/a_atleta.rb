# frozen_string_literal: true

class AAtleta < ApplicationRecord
  # Relacionamentos
  belongs_to        :g_estado
  belongs_to        :g_cidade
  belongs_to        :a_unidade_treinamento
  belongs_to        :a_sexo
  has_one_attached  :foto_atleta

  # Validações 
  validates :nome,                   presence: true
  validates :cpf,                    presence: true
  validates :data_nascimento,        presence: true
  validates :contato1,               presence: true
  validates :contato2,               presence: true
  validates :nacionalidade,          presence: true
  validates :nome_pai,               presence: true
  validates :nome_mae,               presence: true
  validates :responsavel_nome,       presence: true
  validates :responsavel_cpf,        presence: true
  validates :responsavel_rg,         presence: true
  validates :responsavel_orientacao, presence: true
  validates :cep,                    presence: true
  validates :rua,                    presence: true
  validates :bairro,                 presence: true
  validates :numero,                 presence: true
  validates :complemento,            presence: true


end
