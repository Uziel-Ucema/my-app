class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :folder
end
