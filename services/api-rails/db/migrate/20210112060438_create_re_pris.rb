class CreateRePris < ActiveRecord::Migration[6.1]
  def change
    create_table :re_pris do |t|
      t.integer :r_ele_id, null: false, index: true
      t.string :text, null: false, index: true
    end
  end
end
