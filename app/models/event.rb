class Event < ApplicationRecord
  mount_uploader :image, ImageUploader 


  belongs_to :user, foreign_key: 'organizer_id'
  has_many :participants,  dependent: :destroy
  has_many :parts, through: :participants, foreign_key: 'participants_id', dependent: :destroy

  scope :past_events, -> { where('date_start < ?', Time.now.end_of_day) }
  scope :future_events, -> { where('date_start >= ?', Time.now.end_of_day) }

  validates :title , presence: true
  validates :content, presence: true, :length => { :maximum => 500 } 
  validates :date_start, presence: true
  validates :date_end, presence: true

  has_many :labellings, dependent: :destroy
  has_many :labels, through: :labellings


  def total_particpants
    0
  end

  paginates_per 4

  def image_thumbnail
    if image.present?
      image.url
    else
      '/image.png'
    end
  end

end
