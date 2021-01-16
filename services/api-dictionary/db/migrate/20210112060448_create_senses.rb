class CreateSenses < ActiveRecord::Migration[6.1]
  def change
    create_table :senses do |t|
      t.integer :entry_id, null: false, index: true
    end
  end
end
