# frozen_string_literal: true

class CreateAZonaTreinamentos < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_zona_treinamentos)
     create_table :a_zona_treinamentos do |t|
       t.string   :descricao
       t.string   :created_by
       t.string   :updated_by
       t.datetime :deleted_at
       t.timestamps
     end
    end
  end

  def down
    drop_table :a_zona_treinamentos if table_exists/((:a_zona_treinamentos))
  end
end
