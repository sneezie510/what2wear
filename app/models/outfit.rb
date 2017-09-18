class Outfit < ApplicationRecord
  belongs_to :influencer
  has_many :tags, through: :outfit_tags
end
