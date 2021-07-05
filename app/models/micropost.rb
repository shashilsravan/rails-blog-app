class Micropost < ApplicationRecord
    belongs_to :user
    validates :content, length: {minimum:10, maximum:140}, presence: true
end
