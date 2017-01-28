class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :search, null: false
      t.integer :user_searches_count, default: 0
      
      t.timestamps
    end
  end
end
