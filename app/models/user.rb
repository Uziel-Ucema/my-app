class User < ApplicationRecord
    has_secure_password

    has_many :folders_users
    has_many :pet_submissions
    has_and_belongs_to_many :folders, foreign_key: 'user_id', association_foreign_key: 'folder_id'

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address!"}
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    normalizes :email, with: ->(email) {email.strip.downcase}

    generates_token_for :password_reset, expires_in: 15.minutes do
        password_salt&.last(10)
    end

    generates_token_for :email_confirmation, expires_in: 24.hours do
        email
    end
end