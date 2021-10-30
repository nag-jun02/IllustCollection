class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :folloing_id

      t.timestamps
      t.index [:follower_id, :following_id], unique: true
    end
  end
end
