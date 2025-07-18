# frozen_string_literal: true

class CreateGTipoUsuarios < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:g_tipo_usuarios)
     create_table :g_tipo_usuarios do |t|
       t.string   :descricao
       t.string   :created_by
       t.string   :updated_by
       t.datetime :deleted_at
       t.timestamps
     end
    end
  end

  def down
    drop_table :g_tipo_usuarios if table_exists?(:g_tipo_usuarios)
  end
end
