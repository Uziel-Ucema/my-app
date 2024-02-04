class ImageMetadata < ApplicationRecord
    attribute :breed, :string
    attribute :image_name, :string
    attribute :location, :string
    attribute :time, :string
  
    validates :breed, presence: true
    validates :image_name, presence: true
    validates :location, presence: true
    validates :time, presence: true
  end
  