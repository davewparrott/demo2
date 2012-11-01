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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121029180908) do

  create_table "photos", :force => true do |t|
    t.string   "alttxt"
    t.string   "filename"
    t.integer  "product_id"
    t.boolean  "active"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "caption"
  end

  create_table "products", :force => true do |t|
    t.boolean  "active"
    t.text     "details"
    t.decimal  "price"
    t.integer  "stock"
    t.text     "summary"
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "featured"
    t.string   "title_photo"
  end

end
