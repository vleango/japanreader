class CreateGlosses < ActiveRecord::Migration[6.1]
  def change
    create_table :glosses do |t|
      t.integer :sense_id, null: false, index: true
      t.string :lang, default: 'eng'
      t.string :g_type, index: true
      t.text :text, null: false
    end

    add_index :glosses, [:lang, :text], length: {text: 255}

  end
end
