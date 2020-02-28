class Space < ApplicationRecord
  has_one_attached :photo

  has_many :reservations, dependent: :destroy
  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :price_per_day, :city, :content, presence: true

  def full_address
    "#{address} - #{city}"
  end
end
