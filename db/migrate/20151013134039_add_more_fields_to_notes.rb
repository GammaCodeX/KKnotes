class AddMoreFieldsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :arrenged_by, :string
    add_column :notes, :text_by, :string
    add_column :notes, :published_by, :string
    add_column :notes, :notes, :string
  end
end
