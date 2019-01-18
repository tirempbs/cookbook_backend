class User < ApplicationRecord
    has_many :cookbooks
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
