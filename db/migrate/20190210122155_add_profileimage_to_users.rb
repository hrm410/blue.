class AddProfileimageToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :profile_image_id, :string
  	add_column :users, :message, :text
  end
end
