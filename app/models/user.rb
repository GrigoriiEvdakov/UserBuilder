class User < ApplicationRecord
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :skills

  validates :email, presence: true, uniqueness: true
  validates :age, numericality: { greater_than: 0, less_than_or_equal_to: 90 }
  validates :gender, presence: true, inclusion: { in: %w[male female] }
  validates :name, :surname, :patronymic, :nationality, :country, presence: true
end
