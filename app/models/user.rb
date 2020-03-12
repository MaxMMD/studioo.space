class User < ApplicationRecord
  attr_writer :login
  has_one_attached :photo

  has_many    :reservations, dependent: :destroy
  has_many    :spaces, dependent: :destroy
  has_many    :orders


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  def login
    @login || self.username || self.email
  end

  def renter?
    spaces.any?
  end
end
