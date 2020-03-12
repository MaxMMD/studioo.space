class Tag < ApplicationRecord
  has_many :space_tags, dependent: :destroy
  has_many :spaces, through: :space_tags

  # validates :tags, inclusion: { in: %w(painting woodwork sculpting recording photo film)}
end
