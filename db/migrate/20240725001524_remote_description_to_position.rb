class RemoteDescriptionToPosition < ActiveRecord::Migration[7.0]
  def change
    remove_column :positions, :description
  end
end
