class Space < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :price_per_day, :city, :content, presence: true
end
