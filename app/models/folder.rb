class Folder < ApplicationRecord
    has_many :folders_users
    has_many :users, through: :folders_users
end
