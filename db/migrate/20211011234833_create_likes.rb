class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :illust_id
      t.integer :user_id

      t.timestamps
    end
  end
end
