class Micropost < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.Micropost.number4}
  validate  :picture_size
  scope :user_id, -> (id){where "user_id = ?", id}
  scope :created_at, -> {order created_at: :desc}

  private

  def picture_size
    return unless picture.size > Settings.Micropost.number10.megabytes
    errors.add :picture, t(".than")
  end
end
