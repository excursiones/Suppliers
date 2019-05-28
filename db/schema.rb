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

ActiveRecord::Schema.define(version: 2019_05_21_051652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "Cuentas_por_pagar"
    t.integer "Cuentas_pagadas"
    t.integer "Intereses_por_pagar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "supplier_id"
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "excursions", force: :cascade do |t|
    t.integer "Tarifa"
    t.integer "Capacidad"
    t.string "Servicios_Incluidos"
    t.string "Pais"
    t.string "Ciudad"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Codigo"
    t.index ["supplier_id"], name: "index_excursions_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "Nit"
    t.string "Razon"
    t.string "Telefono"
    t.string "Correo"
    t.string "Ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Codigo"
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "excursions", "suppliers"
end
