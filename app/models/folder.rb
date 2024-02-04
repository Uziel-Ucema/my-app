class Folder < ApplicationRecord
    has_many :folders_users
    has_and_belongs_to_many :users, foreign_key: 'folder_id', association_foreign_key: 'user_id'

    has_many :subscriptions
    has_many :users, through: :subscriptions
end
