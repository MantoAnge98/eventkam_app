class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'organizer_id'
  has_many :participants
  has_many :parts, through: :participants, foreign_key: 'participants_id'

  scope :past_events, -> { where('date_start < ?', Time.now.end_of_day) }
  scope :future_events, -> { where('date_start >= ?', Time.now.end_of_day) }

  validates :title , presence: true
  validates :content, presence: true, :length => { :maximum => 500 } 
  validates :image, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true

  mount_uploader :image, ImageUploader 

  has_many :labellings, dependent: :destroy
  has_many :labels, through: :labellings

   #name is string so function scope is
   scope :title_search, -> (text_search) {where("(title LIKE ?)", "%#{text_search}%")}
   #status is integer so function scope is
   scope :status_search, -> (text_search) { where(status: text_search)}
   #Define enum function

  def total_particpants
    0
  end

  paginates_per 4

  def image_thumbnail
    if image.present?
      image.url
    else
      '/default-avatar.png'
    end
  end

end
