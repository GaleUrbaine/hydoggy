
ActiveRecord::Schema.define(version: 2019_01_31_150025) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dogsitters_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.integer "dogsitter_id"
    t.integer "dogs_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dogs_id"], name: "index_strolls_on_dogs_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

end
