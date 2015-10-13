class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :composer
      t.string :data
      t.boolean :canview

      t.timestamps null: false
    end
  end
end
