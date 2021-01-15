class CreateKEles < ActiveRecord::Migration[6.1]
  def change
    create_table :k_eles do |t|
      t.integer :entry_id, null: false, index: true
      t.string :keb, null: false, index: true
    end
  end
end
