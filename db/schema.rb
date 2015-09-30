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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150930051447) do
=======
ActiveRecord::Schema.define(version: 20150928104448) do
>>>>>>> c951fab130d739f978e25571c9fbdb8abe0f392e

  create_table "avaluo_donativos", force: true do |t|
    t.float    "montoBs"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cita", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.text     "ubicación"
    t.string   "nombreDonante"
    t.text     "descripcionDonacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conyugues", force: true do |t|
    t.string   "estado"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.integer  "ci"
    t.string   "lugarNacimiento"
    t.date     "fechaNacimiento"
    t.integer  "telefono"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interno_id"
  end

  create_table "egresos", force: true do |t|
    t.string   "estado"
    t.integer  "monto"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "concepto"
  end

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

  create_table "historia_clinicas", force: true do |t|
    t.text     "enfermedades"
    t.text     "causa_internacion"
    t.text     "observaciones"
    t.integer  "interno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "historia_clinicas", ["interno_id"], name: "index_historia_clinicas_on_interno_id"


  create_table "internos", force: true do |t|
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "sexo"
    t.integer  "ci"
    t.string   "estadoCivil"
    t.text     "direccion"
    t.string   "zona"
    t.integer  "telefono"
    t.date     "fechaNacimiento"
    t.string   "lugarNacimiento"
    t.string   "estudios"
    t.string   "profesion"
    t.string   "oficio"
    t.date     "fechaIngreso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "produccions", force: true do |t|
    t.string   "estado"
    t.date     "fecha_produccion"
    t.date     "fecha_vencimiento"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produccions", ["product_id"], name: "index_produccions_on_product_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.text     "description"
    t.string   "state"
  end

  create_table "recepcion_donativos", force: true do |t|
    t.date     "fecha"
    t.string   "nombreDonante"
    t.string   "articulo"
    t.float    "cantidad"
    t.text     "descripcion"
    t.string   "id_voluntario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
