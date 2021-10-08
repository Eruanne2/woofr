# == Schema Information
#
# Table name: matches
#
#  id         :bigint           not null, primary key
#  match_1_id :integer          not null
#  match_2_id :integer          not null
#
class Match < ApplicationRecord
  validates :match_1_id, presence: true
  validates :match_2_id, presence: true

  validates :match_1_id, uniqueness: { scope: :match_2_id, message: "No duplicate matches" }
  validates :match_2_id, uniqueness: { scope: :match_1_id, message: "No duplicate matches" }
  validate :no_self_match

  # make sure a dog cannot match with itself
  # def no_self_match
  #   if :match_1_id == :match_2_id
  #     errors.add(:match_1_id, "Dog cannot match itself")
  #   end
  # end

  

end
