class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :phone_number, presence: true
  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: %w(belgian chinese french italian japanese medium large)}
end
