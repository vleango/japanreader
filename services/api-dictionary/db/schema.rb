# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_12_185418) do

  create_table "ants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_ants_on_sense_id"
    t.index ["text"], name: "index_ants_on_text"
  end

  create_table "dials", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_dials_on_sense_id"
    t.index ["text"], name: "index_dials_on_text"
  end

  create_table "entries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ent_seq", null: false
    t.index ["ent_seq"], name: "index_entries_on_ent_seq"
  end

  create_table "fields", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_fields_on_sense_id"
    t.index ["text"], name: "index_fields_on_text"
  end

  create_table "glosses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "lang", default: "eng"
    t.string "g_type"
    t.text "text", null: false
    t.index ["g_type"], name: "index_glosses_on_g_type"
    t.index ["lang", "text"], name: "index_glosses_on_lang_and_text", length: { text: 255 }
    t.index ["sense_id"], name: "index_glosses_on_sense_id"
  end

  create_table "k_eles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "entry_id", null: false
    t.string "keb", null: false
    t.index ["entry_id"], name: "index_k_eles_on_entry_id"
    t.index ["keb"], name: "index_k_eles_on_keb"
  end

  create_table "ke_infs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "k_ele_id", null: false
    t.string "text", null: false
    t.index ["k_ele_id"], name: "index_ke_infs_on_k_ele_id"
    t.index ["text"], name: "index_ke_infs_on_text"
  end

  create_table "ke_pris", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "k_ele_id", null: false
    t.string "text", null: false
    t.index ["k_ele_id"], name: "index_ke_pris_on_k_ele_id"
    t.index ["text"], name: "index_ke_pris_on_text"
  end

  create_table "lsources", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "lang", default: "eng"
    t.string "ls_type"
    t.string "ls_wasei"
    t.string "text"
    t.index ["ls_type"], name: "index_lsources_on_ls_type"
    t.index ["ls_wasei"], name: "index_lsources_on_ls_wasei"
    t.index ["sense_id"], name: "index_lsources_on_sense_id"
    t.index ["text"], name: "index_lsources_on_text"
  end

  create_table "miscs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_miscs_on_sense_id"
    t.index ["text"], name: "index_miscs_on_text"
  end

  create_table "poses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_poses_on_sense_id"
    t.index ["text"], name: "index_poses_on_text"
  end

  create_table "r_eles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "entry_id", null: false
    t.string "reb", null: false
    t.boolean "re_nokanji", default: false
    t.index ["entry_id"], name: "index_r_eles_on_entry_id"
    t.index ["re_nokanji"], name: "index_r_eles_on_re_nokanji"
    t.index ["reb"], name: "index_r_eles_on_reb"
  end

  create_table "re_infs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "r_ele_id", null: false
    t.string "text", null: false
    t.index ["r_ele_id"], name: "index_re_infs_on_r_ele_id"
    t.index ["text"], name: "index_re_infs_on_text"
  end

  create_table "re_pris", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "r_ele_id", null: false
    t.string "text", null: false
    t.index ["r_ele_id"], name: "index_re_pris_on_r_ele_id"
    t.index ["text"], name: "index_re_pris_on_text"
  end

  create_table "re_restrs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "r_ele_id", null: false
    t.string "text", null: false
    t.index ["r_ele_id"], name: "index_re_restrs_on_r_ele_id"
    t.index ["text"], name: "index_re_restrs_on_text"
  end

  create_table "s_infs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_s_infs_on_sense_id"
    t.index ["text"], name: "index_s_infs_on_text"
  end

  create_table "senses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "entry_id", null: false
    t.index ["entry_id"], name: "index_senses_on_entry_id"
  end

  create_table "stagks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_stagks_on_sense_id"
    t.index ["text"], name: "index_stagks_on_text"
  end

  create_table "stagrs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_stagrs_on_sense_id"
    t.index ["text"], name: "index_stagrs_on_text"
  end

  create_table "xrefs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "sense_id", null: false
    t.string "text", null: false
    t.index ["sense_id"], name: "index_xrefs_on_sense_id"
    t.index ["text"], name: "index_xrefs_on_text"
  end

end
