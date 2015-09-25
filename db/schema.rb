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

ActiveRecord::Schema.define(version: 20150916113727) do

  create_table "gasto_internos", force: true do |t|
    t.date     "fecha"
    t.string   "concepto"
    t.text     "descripcion"
    t.float    "monto"
    t.integer  "interno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gasto_internos", ["interno_id"], name: "index_gasto_internos_on_interno_id"

  create_table "internos", force: true do |t|
    t.date     "fechaIngreso"
    t.string   "nombres"
    t.string   "apellidoPaterno"
    t.string   "apellidoMaterno"
    t.integer  "ci"
    t.string   "estadoCivil"
    t.integer  "edad"
    t.string   "conyugue"
    t.integer  "numeroDHijos"
    t.string   "lugarDNacimiento"
    t.date     "fechaDNacimiento"
    t.text     "direccion"
    t.string   "zona"
    t.integer  "telefono"
    t.text     "referencias"
    t.string   "estudios"
    t.string   "profesionUOficio"
    t.text     "enfermedades"
    t.text     "causaInternacion"
    t.integer  "tiempoDConsumo"
    t.string   "centroAnterior"
    t.integer  "tiempoEstancia"
    t.text     "motivoDRetiro"
    t.string   "ordenJudicial"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fase"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.text     "description"
    t.string   "state"
  end

end
