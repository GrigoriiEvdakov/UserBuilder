class AddFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :nationality, :string
    add_column :users, :country, :string
    add_column :users, :gender, :string
  end
end
