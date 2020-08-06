class AddPushTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :PushToken, :string
  end
end
