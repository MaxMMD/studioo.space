class Order < ApplicationRecord
  belongs_to :user
  belongs_to :space

  monetize :amount_cents
end
