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

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end
