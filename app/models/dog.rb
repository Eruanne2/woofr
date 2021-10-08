# == Schema Information
#
# Table name: dogs
#
#  id                    :bigint           not null, primary key
#  name                  :string           not null
#  age                   :integer
#  username              :string           not null
#  owner_name            :string
#  breed                 :string
#  size                  :string
#  color                 :string
#  weight                :integer
#  favorite_food         :string
#  favorite_fire_hydrant :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Dog < ApplicationRecord
  validates :username, :name, presence: true
  validates :username, uniqueness: true

  
end
