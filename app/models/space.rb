class Space < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
end
