class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :ent_seq, null: false, index: true
    end
  end
end
