class Space < ApplicationRecord
  has_one_attached :photo

  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  has_many :space_tags
  has_many :tags, through: :space_tags


  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :price_per_day, :city, :content, presence: true
  monetize :price_per_day_cents
  def full_address
    "#{address} - #{city}"
  end

  def sku
    "#{self.class.name.parameterize}-#{id}"
  end

  def booked_by?(user)
    reservations.any? do |reservation|
      reservation.user == user
    end
  end

  def all_tags=(names)
    # names = %w(paiting woodwork film photo recording sculpting)
    # Purpose of this method is to push the tag.name into an array that belongs to the space itself
    self.tags = names.split(',').map do |name|
      Tag.where(name: name).first_or_create!
      # SpaceTag.create(tag: tag, space: self) if tag
    end
  end

  def all_tags
    tags.map(&:name)
    end
end
