class CreateUsersInterests < ActiveRecord::Migration[7.2]
  def change
    create_table :users_interests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
