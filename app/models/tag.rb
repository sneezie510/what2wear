class Tag < ApplicationRecord
  belongs_to :outfit
  has_many :outfits, through: :outfit_tags
end
