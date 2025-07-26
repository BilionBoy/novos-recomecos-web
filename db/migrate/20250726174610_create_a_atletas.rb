# frozen_string_literal: true

class CreateAAtletas < ActiveRecord::Migration[7.2]
  def up
    create_table :a_atletas do |t|
      t.string     :nome
      t.string     :cpf
      t.date       :data_nascimento
      t.string     :contato1
      t.string     :contato2
      t.string     :nacionalidade
      t.string     :nome_pai
      t.string     :nome_mae
      t.string     :responsavel_nome
      t.string     :responsavel_cpf
      t.string     :responsavel_rg
      t.text       :responsavel_orientacao
      t.boolean    :portador_necessidade
      t.text       :descricao_necessidade
      t.string     :cep
      t.string     :rua
      t.string     :bairro
      t.string     :numero
      t.string     :complemento
      t.references :g_estado,              foreign_key: true
      t.references :g_cidade,              foreign_key: true
      t.references :a_unidade_treinamento, foreign_key: true
      t.references :a_sexo,                foreign_key: true
      t.string     :created_by
      t.string     :updated_by
      t.datetime   :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :a_atletas
  end
end
