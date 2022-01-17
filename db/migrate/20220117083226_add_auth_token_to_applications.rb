class AddAuthTokenToApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :auth_token, :string
    add_index :applications, :auth_token, unique: true
  end
end
