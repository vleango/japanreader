class CreateMiscs < ActiveRecord::Migration[6.1]
  def change
    create_table :miscs do |t|
      t.integer :sense_id, null: false, index: true
      t.string :text, null: false, index: true
    end
  end
end
