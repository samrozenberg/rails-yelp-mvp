class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w[Chinese Italian Japanese French Belgian], message: '%{value} is not a valid category' }
end
