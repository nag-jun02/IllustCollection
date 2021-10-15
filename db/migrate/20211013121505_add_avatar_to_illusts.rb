class AddAvatarToIllusts < ActiveRecord::Migration[6.1]
  def change
    add_column :illusts, :avatar, :string
  end
end
