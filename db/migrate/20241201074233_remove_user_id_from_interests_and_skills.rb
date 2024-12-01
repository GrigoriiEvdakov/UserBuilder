class RemoveUserIdFromInterestsAndSkills < ActiveRecord::Migration[7.2]
  def change
    remove_column :interests, :user_id, :bigint
    remove_column :skills, :user_id, :bigint
  end
end
