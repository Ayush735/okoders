class Channel < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :tv_shows, dependent: :destroy
end