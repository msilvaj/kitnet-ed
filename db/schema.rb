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

ActiveRecord::Schema.define(version: 2019_06_09_180921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inquilinos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.string "telefone"
    t.string "ap"
    t.string "codigoEletrobras"
    t.date "dataInicio"
    t.date "dataFim"
    t.date "dataVencimento"
    t.boolean "pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagamentos", force: :cascade do |t|
    t.string "mes"
    t.boolean "pago"
    t.bigint "inquilino_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inquilino_id"], name: "index_pagamentos_on_inquilino_id"
  end

  add_foreign_key "pagamentos", "inquilinos"
end
