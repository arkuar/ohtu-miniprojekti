class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :tags, :name
  end
end
