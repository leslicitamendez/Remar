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

ActiveRecord::Schema.define(version: 20151109112128) do

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
    t.string   "estado"
    t.integer  "telefono"
    t.integer  "voluntario_id"
  end

  add_index "cita", ["voluntario_id"], name: "index_cita_on_voluntario_id"

  create_table "conducta", force: true do |t|
    t.boolean  "estado"
    t.date     "fecha"
    t.text     "descripcion"
    t.string   "tipoConducta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interno_id"
  end

  create_table "contacts", force: true do |t|
    t.string   "sexo"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.integer  "ci"
    t.integer  "telefono"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interno_id"
  end

  create_table "conyugues", force: true do |t|
    t.boolean  "estado",          limit: 255
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

  create_table "court_orders", force: true do |t|
    t.text     "descripcion"
    t.boolean  "estado"
    t.integer  "interno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero"
  end

  add_index "court_orders", ["interno_id"], name: "index_court_orders_on_interno_id"

  create_table "egreso_internos", force: true do |t|
    t.string   "concepto"
    t.float    "monto"
    t.text     "observaciones"
    t.date     "fecha"
    t.integer  "interno_id"
    t.integer  "egreso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egreso_internos", ["egreso_id"], name: "index_egreso_internos_on_egreso_id"
  add_index "egreso_internos", ["interno_id"], name: "index_egreso_internos_on_interno_id"

  create_table "egreso_produccions", force: true do |t|
    t.text     "observaciones"
    t.integer  "egreso_id"
    t.integer  "produccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egreso_produccions", ["egreso_id"], name: "index_egreso_produccions_on_egreso_id"
  add_index "egreso_produccions", ["produccion_id"], name: "index_egreso_produccions_on_produccion_id"

  create_table "egresos", force: true do |t|
    t.string   "estado"
    t.float    "monto"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "concepto"
  end

  create_table "entrega_productos", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "cantidad"
    t.boolean  "estado"
    t.integer  "product_id"
    t.integer  "voluntario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entrega_productos", ["product_id"], name: "index_entrega_productos_on_product_id"
  add_index "entrega_productos", ["voluntario_id"], name: "index_entrega_productos_on_voluntario_id"

  create_table "entregaprods", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "cantidad"
    t.text     "observaciones"
    t.boolean  "estado"
    t.integer  "voluntario_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entregaprods", ["product_id"], name: "index_entregaprods_on_product_id"
  add_index "entregaprods", ["voluntario_id"], name: "index_entregaprods_on_voluntario_id"

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

  create_table "hijos", force: true do |t|
    t.boolean  "estado"
    t.string   "sexo"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.integer  "ci"
    t.date     "fechaNacimiento"
    t.string   "lugarNacimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interno_id"
  end

  create_table "historia_clinicas", force: true do |t|
    t.text     "enfermedades"
    t.text     "causa_internacion"
    t.text     "observaciones"
    t.integer  "interno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha"
  end

  add_index "historia_clinicas", ["interno_id"], name: "index_historia_clinicas_on_interno_id"

  create_table "ingresos", force: true do |t|
    t.float    "montoBs"
    t.string   "concepto"
    t.date     "fecha"
    t.boolean  "estado"
    t.integer  "ventaprod_id"
    t.integer  "recepcionDonativo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingresos", ["recepcionDonativo_id"], name: "index_ingresos_on_recepcionDonativo_id"
  add_index "ingresos", ["ventaprod_id"], name: "index_ingresos_on_ventaprod_id"

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
    t.integer  "fase"
  end

  create_table "produccions", force: true do |t|
    t.string   "estado"
    t.date     "fecha_produccion"
    t.date     "fecha_vencimiento"
    t.integer  "cantidad"
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
    t.string   "unity"
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
    t.integer  "voluntario_id"
  end

  create_table "rehabs", force: true do |t|
    t.text     "enfermedades"
    t.text     "causaInternacion"
    t.integer  "tiempoConsumo"
    t.string   "centroAnterior"
    t.string   "nombreCentre"
    t.integer  "tiempoEstancia"
    t.text     "motivoRetiro"
    t.text     "observaciones"
    t.integer  "interno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rendicion_productos", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "cantidad"
    t.text     "observaciones"
    t.boolean  "estado"
    t.integer  "Product_id"
    t.integer  "Voluntario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "entrega_productos_id"
  end

  add_index "rendicion_productos", ["Product_id"], name: "index_rendicion_productos_on_Product_id"
  add_index "rendicion_productos", ["Voluntario_id"], name: "index_rendicion_productos_on_Voluntario_id"
  add_index "rendicion_productos", ["entrega_productos_id"], name: "index_rendicion_productos_on_entrega_productos_id"

  create_table "rendicionprods", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "cantidad"
    t.text     "observaciones"
    t.boolean  "estado"
    t.integer  "entregaprod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rendicionprods", ["entregaprod_id"], name: "index_rendicionprods_on_entregaprod_id"

  create_table "venta", force: true do |t|
    t.integer  "cantidad"
    t.date     "feche"
    t.float    "precioUnidad"
    t.boolean  "estado"
    t.integer  "entregaProducto_id"
    t.integer  "rendicionProducto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venta", ["entregaProducto_id"], name: "index_venta_on_entregaProducto_id"
  add_index "venta", ["rendicionProducto_id"], name: "index_venta_on_rendicionProducto_id"

  create_table "ventaprods", force: true do |t|
    t.integer  "cantidad"
    t.date     "fecha"
    t.float    "precioUnidad"
    t.boolean  "estado"
    t.text     "observaciones"
    t.integer  "rendicionprod_id"
    t.integer  "entregaprod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ventaprods", ["entregaprod_id"], name: "index_ventaprods_on_entregaprod_id"
  add_index "ventaprods", ["rendicionprod_id"], name: "index_ventaprods_on_rendicionprod_id"

  create_table "voluntarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "direccion"
    t.integer  "NivelConfianza"
    t.integer  "telefono"
    t.string   "ci"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sexo"
  end

end
