class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
