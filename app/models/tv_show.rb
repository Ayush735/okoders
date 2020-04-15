class TvShow < ApplicationRecord
  validates :name, presence: true
  belongs_to :channel
end