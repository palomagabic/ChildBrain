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

ActiveRecord::Schema.define(version: 2019_08_29_015100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Estado", id: false, force: :cascade do |t|
    t.integer "id_estado", null: false
    t.text "Tipo", null: false
  end

  create_table "Faqs", id: false, force: :cascade do |t|
    t.text "Pregunta", null: false
    t.text "Respuesta", null: false
  end

  create_table "Game", id: false, force: :cascade do |t|
    t.serial "id_game", null: false
    t.text "description"
    t.bigint "n_ejecuciones", null: false
    t.text "type", null: false
    t.xml "route"
    t.datetime "date_init", null: false
    t.boolean "active", null: false
    t.text "name", null: false
  end

  create_table "Instituciones", id: false, force: :cascade do |t|
    t.serial "id_institucion", null: false
    t.text "name", null: false
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

  create_table "premia", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name", null: false
    t.json "photo"
    t.text "institucion", null: false
    t.datetime "activation_day", null: false
    t.index ["email"], name: "index_premia_on_email", unique: true
    t.index ["reset_password_token"], name: "index_premia_on_reset_password_token", unique: true
  end

end
