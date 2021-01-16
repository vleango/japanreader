class CreateXrefs < ActiveRecord::Migration[6.1]
  def change
    create_table :xrefs do |t|
      t.integer :sense_id, null: false, index: true
      t.string :text, null: false, index: true
    end
  end
end
