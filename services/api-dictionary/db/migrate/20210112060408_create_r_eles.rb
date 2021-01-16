class CreateREles < ActiveRecord::Migration[6.1]
  def change
    create_table :r_eles do |t|
      t.integer :entry_id, null: false, index: true
      t.string :reb, null: false, index: true
      t.boolean :re_nokanji, default: false, index: true
    end
  end
end
