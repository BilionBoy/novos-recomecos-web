# frozen_string_literal: true

class CreateGEstados < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:g_estados)
     create_table :g_estados do |t|
       t.string   :nome_fantasia
       t.string   :created_by
       t.string   :updated_by
       t.datetime :deleted_at
       t.timestamps
     end
    end
  end

  def down
    drop_table :g_estados if tablet_e xists?(:g_estados)
  end
end
