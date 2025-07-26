# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_07_26_181727) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "a_atletas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "contato1"
    t.string "contato2"
    t.string "nacionalidade"
    t.string "nome_pai"
    t.string "nome_mae"
    t.string "responsavel_nome"
    t.string "responsavel_cpf"
    t.string "responsavel_rg"
    t.text "responsavel_orientacao"
    t.boolean "portador_necessidade"
    t.text "descricao_necessidade"
    t.string "cep"
    t.string "rua"
    t.string "bairro"
    t.string "numero"
    t.string "complemento"
    t.bigint "g_estado_id"
    t.bigint "g_cidade_id"
    t.bigint "a_unidade_treinamento_id"
    t.bigint "a_sexo_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_sexo_id"], name: "index_a_atletas_on_a_sexo_id"
    t.index ["a_unidade_treinamento_id"], name: "index_a_atletas_on_a_unidade_treinamento_id"
    t.index ["g_cidade_id"], name: "index_a_atletas_on_g_cidade_id"
    t.index ["g_estado_id"], name: "index_a_atletas_on_g_estado_id"
  end

  create_table "a_sexos", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_unidade_treinamentos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "a_zona_treinamento_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_zona_treinamento_id"], name: "index_a_unidade_treinamentos_on_a_zona_treinamento_id"
  end

  create_table "a_zona_treinamentos", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "g_cidades", force: :cascade do |t|
    t.string "nome_fantasia"
    t.bigint "g_estado_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_estado_id"], name: "index_g_cidades_on_g_estado_id"
  end

  create_table "g_estados", force: :cascade do |t|
    t.string "nome_fantasia"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_tipo_usuarios", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "cpf"
    t.bigint "g_tipo_usuario_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["g_tipo_usuario_id"], name: "index_users_on_g_tipo_usuario_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "a_atletas", "a_sexos"
  add_foreign_key "a_atletas", "a_unidade_treinamentos"
  add_foreign_key "a_atletas", "g_cidades"
  add_foreign_key "a_atletas", "g_estados"
  add_foreign_key "a_unidade_treinamentos", "a_zona_treinamentos"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "g_cidades", "g_estados"
  add_foreign_key "users", "g_tipo_usuarios"
end
