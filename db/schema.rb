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

ActiveRecord::Schema.define(version: 2019_09_25_224706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Faqs", id: false, force: :cascade do |t|
    t.text "Pregunta", null: false
    t.text "Respuesta", null: false
  end

  create_table "Nivel", id: false, force: :cascade do |t|
    t.integer "id_nivel", null: false
    t.text "Tipo", null: false
  end

  create_table "Partida", id: false, force: :cascade do |t|
    t.serial "id_partida", null: false
    t.integer "id_nivel", null: false
    t.integer "puntaje", null: false
    t.integer "id_estado", null: false
    t.bigint "id_user", null: false
    t.datetime "date_play", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.integer "id_estado"
    t.text "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instituciones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", id: false, force: :cascade do |t|
    t.serial "id_new", null: false
    t.text "author", null: false
    t.text "title", null: false
    t.xml "photo_link"
    t.datetime "date", null: false
    t.text "text", null: false
    t.text "extract", null: false
  end


  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
