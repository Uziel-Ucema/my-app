class Location < ApplicationRecord
    has_and_belongs_to_many :users, join_table: :locations_users

    has_many :subscriptions
    has_many :users, through: :subscriptions
end