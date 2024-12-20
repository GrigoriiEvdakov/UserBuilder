class Interest < ApplicationRecord
  has_and_belongs_to_many :users, join_table: 'users_interests'
  validates :name, presence: true
end
