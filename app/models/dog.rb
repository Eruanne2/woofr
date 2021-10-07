class Dog < ApplicationRecord
  validates :username, :name, presence: true
  validates :username, uniqueness: true
end
