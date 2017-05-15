class Restaurant < ApplicationRecord
  validates :mean_price, presence: true
  validates :name, uniqueness: true, presence: true
  validates :rating, presence: true

  before_create do |r|
    r.active = true
    r.deleted_at = nil
  end
end
