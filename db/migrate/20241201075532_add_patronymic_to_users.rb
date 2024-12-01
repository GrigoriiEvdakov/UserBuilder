class AddPatronymicToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :patronymic, :string
  end
end
