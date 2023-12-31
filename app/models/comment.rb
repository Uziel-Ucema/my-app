class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pet_submission
  validates :body, presence: true
end
