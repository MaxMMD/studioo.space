class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :space
  monetize :price_per_day_cents

  has_many :reviews, dependent: :destroy

  validates :start_on, :end_on, presence: true

  def number_of_days
    (end_on - start_on).to_i
  end

  def total_price
    price_per_day * number_of_days
  end
end
