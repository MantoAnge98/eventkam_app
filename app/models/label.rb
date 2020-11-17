class Label < ApplicationRecord

  validates :title, presence:true
  has_many :labellings, dependent: :destroy
  has_many :events, through: :labellings

  belongs_to :user
  paginates_per 4

end
