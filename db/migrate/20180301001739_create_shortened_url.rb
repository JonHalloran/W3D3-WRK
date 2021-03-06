class CreateShortenedUrl < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false 
      t.integer :user_id, null: false
      t.index :short_url, unique: true
    end
  end
end
