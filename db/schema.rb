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

ActiveRecord::Schema.define(version: 20141221023430) do

  create_table "citas", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "especialista_id"
    t.date     "fecha"
    t.integer  "estatus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultorios", force: true do |t|
    t.string   "nombre"
    t.text     "direccion"
    t.string   "correo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "especialidades", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "especialistas", force: true do |t|
    t.integer  "especialidad_id"
    t.string   "cedula"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "correo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", force: true do |t|
    t.string   "cedula"
    t.string   "nombres"
    t.string   "apellidos"
    t.text     "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
