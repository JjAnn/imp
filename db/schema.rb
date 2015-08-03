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

ActiveRecord::Schema.define(version: 20150729162741) do

  create_table "clientes", force: :cascade do |t|
    t.string   "name"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditionals", force: :cascade do |t|
    t.boolean  "transla"
    t.boolean  "interval"
    t.integer  "km"
    t.date     "data"
    t.string   "why"
    t.string   "time"
    t.integer  "projeto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "conditionals", ["projeto_id"], name: "index_conditionals_on_projeto_id"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "locals", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "logra"
    t.string   "cep"
    t.string   "uf"
    t.string   "city"
    t.integer  "km"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locals", ["cliente_id"], name: "index_locals_on_cliente_id"

  create_table "projetos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "name"
    t.string   "descr"
    t.string   "typo"
    t.integer  "user_id"
    t.date     "dateini"
    t.date     "datefin"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relatos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "projeto_id"
    t.integer  "local_id"
    t.integer  "task_id"
    t.integer  "time"
    t.string   "comment"
    t.boolean  "isdoe"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longtitude"
    t.string   "ip_address"
    t.string   "getlocal"
  end

  add_index "relatos", ["cliente_id"], name: "index_relatos_on_cliente_id"
  add_index "relatos", ["local_id"], name: "index_relatos_on_local_id"
  add_index "relatos", ["projeto_id"], name: "index_relatos_on_projeto_id"
  add_index "relatos", ["task_id"], name: "index_relatos_on_task_id"
  add_index "relatos", ["user_id"], name: "index_relatos_on_user_id"

  create_table "reltasks", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "relato_id"
    t.time     "tempo"
    t.boolean  "isdoe"
    t.integer  "user_id"
    t.integer  "projeto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "ip_address"
    t.string   "getlocal"
    t.float    "longtitude"
    t.float    "latitude"
  end

  add_index "reltasks", ["projeto_id"], name: "index_reltasks_on_projeto_id"
  add_index "reltasks", ["relato_id"], name: "index_reltasks_on_relato_id"
  add_index "reltasks", ["task_id"], name: "index_reltasks_on_task_id"
  add_index "reltasks", ["user_id"], name: "index_reltasks_on_user_id"

# Could not dump table "tasks" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "tsk1s", force: :cascade do |t|
    t.integer  "raiz"
    t.string   "descr"
    t.integer  "hour"
    t.string   "typo"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tsk1s", ["task_id"], name: "index_tsk1s_on_task_id"

  create_table "tsk2s", force: :cascade do |t|
    t.integer  "raiz"
    t.string   "descr"
    t.integer  "hour"
    t.string   "typo"
    t.integer  "task_id"
    t.integer  "tsk1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tsk2s", ["task_id"], name: "index_tsk2s_on_task_id"
  add_index "tsk2s", ["tsk1_id"], name: "index_tsk2s_on_tsk1_id"

  create_table "tsk3s", force: :cascade do |t|
    t.integer  "raiz"
    t.string   "descr"
    t.integer  "hour"
    t.string   "typo"
    t.integer  "task_id"
    t.integer  "tsk2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tsk3s", ["task_id"], name: "index_tsk3s_on_task_id"
  add_index "tsk3s", ["tsk2_id"], name: "index_tsk3s_on_tsk2_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                                       null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "role"
    t.string   "name"
    t.string   "classe"
    t.string   "celular"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token"
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token"

end
