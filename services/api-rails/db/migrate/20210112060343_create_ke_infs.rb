class CreateKeInfs < ActiveRecord::Migration[6.1]
  def change
    create_table :ke_infs do |t|
      t.integer :k_ele_id, null: false, index: true
      t.string :text, null: false, index: true
    end
  end
end
