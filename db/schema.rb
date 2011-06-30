# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "avaliacaos", :force => true do |t|
    t.integer  "valor",        :null => false
    t.string   "comentario"
    t.integer  "palestra_id",  :null => false
    t.integer  "avaliador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliadors", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "email",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palestras", :force => true do |t|
    t.string   "nome",        :null => false
    t.string   "palestrante", :null => false
    t.date     "data",        :null => false
    t.time     "horario",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
