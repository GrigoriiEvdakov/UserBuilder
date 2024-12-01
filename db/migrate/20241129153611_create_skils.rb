class CreateSkils < ActiveRecord::Migration[7.2]
  def change
    create_table :skils do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :skils, :name, unique: true
  end
end
