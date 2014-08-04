class User < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 30 }
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
