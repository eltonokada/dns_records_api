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

ActiveRecord::Schema.define(version: 2024_02_29_012009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dns_records", force: :cascade do |t|
    t.inet "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dns_records_hostnames", id: false, force: :cascade do |t|
    t.bigint "dns_record_id", null: false
    t.bigint "hostname_id", null: false
    t.index ["dns_record_id", "hostname_id"], name: "index_dns_records_hostnames_on_dns_record_id_and_hostname_id"
    t.index ["hostname_id", "dns_record_id"], name: "index_dns_records_hostnames_on_hostname_id_and_dns_record_id"
  end

  create_table "hostnames", force: :cascade do |t|
    t.string "hostname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
