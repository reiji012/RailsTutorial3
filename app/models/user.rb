class User < ApplicationRecord
    validates :name, presence: true, length: { maximum:50 }
    VALIDE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum:255 }, format: {with: VALIDE_EMAIL_REGEX}, uniqueness: true
end
