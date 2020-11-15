class Participant < ApplicationRecord
  belongs_to :participants, foreign_key: 'participants_id', class_name: 'User'
  belongs_to :participants, foreign_key: 'event_id', class_name: 'Event'
end
