# frozen_string_literal: true
class AddNomeCpfToUsers < ActiveRecord::Migration[7.2]
  def up
    add_column :users, :nome, :string unless column_exists?(:users, :nome)
    add_column :users, :cpf,  :string unless column_exists?(:users, :cpf)
    
    unless column_exists?(:users, :g_tipo_usuario_id)
      add_reference :users, :g_tipo_usuario, foreign_key: true, type: :bigint
    end
  end

  def down
    remove_reference :users, :g_tipo_usuario, foreign_key: true if column_exists?(:users, :g_tipo_usuario_id)
    remove_column :users, :cpf if column_exists?(:users, :cpf)
    remove_column :users, :nome if column_exists?(:users, :nome)
  end
end
