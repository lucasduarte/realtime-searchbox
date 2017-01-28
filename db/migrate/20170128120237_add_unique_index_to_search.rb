class AddUniqueIndexToSearch < ActiveRecord::Migration[5.0]
  def change
    add_index :searches, :search, unique: true
  end
end
