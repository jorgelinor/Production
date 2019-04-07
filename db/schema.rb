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

ActiveRecord::Schema.define(version: 2019_04_07_150755) do

  create_table "almacens", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "controladora_id"
    t.index ["controladora_id"], name: "index_almacens_on_controladora_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controladoras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costo_indirectos", force: :cascade do |t|
    t.string "idRequisitoIndirecto"
    t.string "nombreRequisitoInd"
    t.text "descripcion"
    t.float "cantidadNecesaria"
    t.float "costoPorUnidad"
    t.string "unidadDeMedida"
    t.integer "formula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formula_id"], name: "index_costo_indirectos_on_formula_id"
  end

  create_table "costos", force: :cascade do |t|
    t.string "idCosto"
    t.float "monto"
    t.date "ultimaFechaUtilizado"
    t.boolean "actual"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_costos_on_material_id"
  end

  create_table "formulas", force: :cascade do |t|
    t.string "idFormula"
    t.integer "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_formulas_on_producto_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "idMaterial"
    t.string "codigoMaterial"
    t.string "nombre"
    t.text "descripcion"
    t.string "estatus"
    t.float "cantidadDisponible"
    t.string "unidadDeMedida"
    t.date "fechaDeVencimiento"
    t.integer "almacen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["almacen_id"], name: "index_materials_on_almacen_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "idProducto"
    t.string "nombre"
    t.float "porcentajeGanancia"
    t.integer "almacen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["almacen_id"], name: "index_productos_on_almacen_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "idProveedor"
    t.string "nombre"
    t.string "telefono"
    t.string "email"
    t.integer "controladora_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controladora_id"], name: "index_proveedors_on_controladora_id"
  end

end
