class AddUserTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :type, :string
  end
end
