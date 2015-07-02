class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :cliente, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :projeto, index: true, foreign_key: true
    end
  end
end
