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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130426154021) do

  create_table "addresses", :force => true do |t|
    t.integer "adress_id"
    t.integer "city_id"
    t.string  "address 1"
    t.string  "address 2"
  end

  create_table "admin_users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "email",           :limit => 100, :default => "", :null => false
    t.string   "hashed_password", :limit => 40
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "username",        :limit => 25
    t.string   "salt",            :limit => 40
  end

  add_index "admin_users", ["username"], :name => "index_admin_users_on_username"

  create_table "categories", :force => true do |t|
    t.integer "category_id"
    t.string  "name",        :limit => 50
    t.text    "description"
  end

  create_table "cities", :force => true do |t|
    t.integer "city_id"
    t.integer "country_id"
    t.string  "name"
    t.integer "zip_code"
  end

  create_table "components", :force => true do |t|
    t.integer "category_id"
    t.string  "name",        :limit => 30
    t.text    "description"
    t.text    "picture"
    t.float   "price"
  end

  create_table "countries", :force => true do |t|
    t.integer "country_id"
    t.string  "name",       :limit => 50
  end

  create_table "menu_links", :force => true do |t|
    t.integer "menu_id"
    t.string  "title",   :limit => 50
    t.text    "path"
  end

  create_table "menus", :force => true do |t|
    t.string   "name",        :limit => 25
    t.string   "description", :limit => 50
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "component_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.boolean  "visible",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "position"
  end

  add_index "pages", ["permalink"], :name => "index_pages_on_permalink"
  add_index "pages", ["subject_id"], :name => "index_pages_on_subject_id"

  create_table "pictures", :force => true do |t|
    t.integer "slideshow_id"
    t.string  "title",        :limit => 50
    t.text    "description"
  end

  create_table "polices", :force => true do |t|
    t.string "name", :limit => 25
  end

  create_table "sections", :force => true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      :default => false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "sections", ["page_id"], :name => "index_sections_on_page_id"

  create_table "slideshows", :force => true do |t|
    t.string "name",    :limit => 50
    t.text   "url"
    t.text   "picture"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
