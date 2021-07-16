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

ActiveRecord::Schema.define(version: 2021_07_13_120231) do

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.date "datainicio"
    t.date "datafim"
    t.boolean "finalizada"
    t.integer "projeto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projeto_id"], name: "index_atividades_on_projeto_id"
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.date "datainicio"
    t.date "datafim"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "atividades", "projetos"
end
