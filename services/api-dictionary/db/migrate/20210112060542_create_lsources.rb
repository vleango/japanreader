class CreateLsources < ActiveRecord::Migration[6.1]
  def change
    create_table :lsources do |t|
      t.integer :sense_id, null: false, index: true
      t.string :lang, default: 'eng'
      t.string :ls_type, index: true
      t.string :ls_wasei, index: true
      t.string :text, index: true
    end
  end
end
