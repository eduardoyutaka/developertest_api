class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  before_create do |r|
    r.active = true
    r.deleted_at = nil
    r.mean_price = 1
    r.rating = 1
  end
end
