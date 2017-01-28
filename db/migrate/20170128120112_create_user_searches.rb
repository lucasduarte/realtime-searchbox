class CreateUserSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :user_searches do |t|
      t.references :search, index: true, foreign_key: true
      t.string :ip_address
      
      t.timestamps
    end
  end
end
