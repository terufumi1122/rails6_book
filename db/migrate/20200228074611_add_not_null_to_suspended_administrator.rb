class AddNotNullToSuspendedAdministrator < ActiveRecord::Migration[6.0]
  def change
    change_column :administrators, :suspended, :boolean, null: false, default: false
  end
end
