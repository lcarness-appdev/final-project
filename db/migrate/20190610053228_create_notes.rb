class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :notes
      t.integer :inputs_id

      t.timestamps
    end
  end
end
