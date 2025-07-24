# frozen_string_literal: true

class CreateAUnidadeTreinamentos < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_unidade_treinamentos)
     create_table :a_unidade_treinamentos do |t|
       t.string      :descricao
       t.references  :a_zona_treinamento, foreign_key: true
       t.string      :created_by
       t.string      :updated_by
       t.datetime    :deleted_at
       t.timestamps
     end
    end
  end

  def down
    drop_table :a_unidade_treinamentos if table_exists?(:a_unidade_treinamentos)
  end
end
