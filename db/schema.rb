# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160614205455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email"
    t.string   "rol_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "archivofolders", force: :cascade do |t|
    t.string   "nombre"
    t.string   "autor"
    t.string   "filefolder_uid"
    t.string   "filefolder_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "folder_id"
    t.integer  "showroom_id"
  end

  add_index "archivofolders", ["folder_id"], name: "index_archivofolders_on_folder_id", using: :btree
  add_index "archivofolders", ["showroom_id"], name: "index_archivofolders_on_showroom_id", using: :btree

  create_table "archivos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "autor"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  create_table "assets", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  add_index "assets", ["user_id"], name: "index_assets_on_user_id", using: :btree

  create_table "brandteams", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "empresa"
    t.string   "telefono"
    t.string   "email"
    t.string   "foto_uid"
    t.string   "foto_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channels", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "porcentaje"
    t.integer  "dias"
    t.integer  "skus"
    t.integer  "reviews"
    t.string   "revision"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "asset_uid"
    t.string   "asset_name"
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "autor"
    t.string   "archivo_uid"
    t.string   "archivo_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  create_table "folders", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "id_padre"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "showroom_id"
  end

  add_index "folders", ["showroom_id"], name: "index_folders_on_showroom_id", using: :btree

  create_table "operacions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float    "anual"
    t.float    "ultimomes"
    t.integer  "porcentaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permisos", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "rol_id"
    t.integer  "seccion_id"
    t.integer  "operacion_id"
  end

  add_index "permisos", ["operacion_id"], name: "index_permisos_on_operacion_id", using: :btree
  add_index "permisos", ["rol_id"], name: "index_permisos_on_rol_id", using: :btree
  add_index "permisos", ["seccion_id"], name: "index_permisos_on_seccion_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.text     "tags"
    t.float    "price"
    t.string   "product_type"
    t.string   "handle"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.string   "vendor"
    t.string   "asset_uid"
    t.string   "asset_name"
    t.string   "asset2_uid"
    t.string   "asset2_name"
    t.string   "asset3_uid"
    t.string   "asset3_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "showpins", force: :cascade do |t|
    t.string   "nota"
    t.string   "titulo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "showroom_id"
  end

  add_index "showpins", ["showroom_id"], name: "index_showpins_on_showroom_id", using: :btree

  create_table "showrooms", force: :cascade do |t|
    t.integer  "modulo"
    t.string   "direccion"
    t.string   "horario"
    t.string   "telefono"
    t.string   "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "portada_uid"
    t.string   "portada_name"
  end

  create_table "skugraphs", force: :cascade do |t|
    t.string   "sku"
    t.integer  "velocidad"
    t.integer  "inventario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skus", force: :cascade do |t|
    t.string   "productid"
    t.string   "sku"
    t.string   "variant1"
    t.string   "variant2"
    t.string   "variant3"
    t.string   "ean"
    t.float    "retailprice"
    t.float    "saleprice"
    t.float    "cost"
    t.integer  "inv"
    t.string   "classification"
    t.string   "brand"
    t.float    "weight"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "product_id"
  end

  add_index "skus", ["product_id"], name: "index_skus_on_product_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "empresa"
    t.string   "telefono"
    t.string   "email"
    t.string   "foto_uid"
    t.string   "foto_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "asset_uid"
    t.string   "asset_name"
    t.string   "direccion"
    t.integer  "rol_id"
  end

  add_index "users", ["asset_name"], name: "index_users_on_asset_name", unique: true, using: :btree
  add_index "users", ["asset_uid"], name: "index_users_on_asset_uid", unique: true, using: :btree
  add_index "users", ["direccion"], name: "index_users_on_direccion", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["first_name"], name: "index_users_on_first_name", unique: true, using: :btree
  add_index "users", ["last_name"], name: "index_users_on_last_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["rol_id"], name: "index_users_on_rol_id", using: :btree

  create_table "variations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
  end

  add_index "variations", ["product_id"], name: "index_variations_on_product_id", using: :btree

  create_table "velocidaddiaria", force: :cascade do |t|
    t.string   "sku"
    t.integer  "velocidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventaunidads", force: :cascade do |t|
    t.string   "mes"
    t.integer  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "archivofolders", "folders"
  add_foreign_key "archivofolders", "showrooms"
  add_foreign_key "assets", "users"
  add_foreign_key "folders", "showrooms"
  add_foreign_key "permisos", "operacions"
  add_foreign_key "permisos", "rols"
  add_foreign_key "permisos", "seccions"
  add_foreign_key "showpins", "showrooms"
  add_foreign_key "skus", "products"
  add_foreign_key "users", "rols"
  add_foreign_key "variations", "products"
end
