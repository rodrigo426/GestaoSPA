class RemovePhotoFromClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :photo, :string
  end
end
