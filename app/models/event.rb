class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'organizer_id'
  has_many :participants
  has_many :participants, through: :participants, foreign_key: 'participants_id'

  scope :past_events, -> { where('date_start < ?', Time.now.end_of_day) }
  scope :future_events, -> { where('date_start >= ?', Time.now.end_of_day) }

  def total_particpants
    0
  end
end
