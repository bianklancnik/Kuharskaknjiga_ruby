class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    validates :title, presence: true,
                      length: {minimum: 5}
    validates :body, presence: true
    mount_uploader :image, ImageUploader
end