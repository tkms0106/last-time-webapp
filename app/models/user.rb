class User < ApplicationRecord
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_many :authorizations, dependent: :destroy
  has_many :events, dependent: :destroy

  def self.create_with_auth!(auth)
    create!(email: auth['info']['email'])
  end

  def update_email(email_from_auth)
    email.casecmp(email_from_auth) != 0 && update(email: email_from_auth)
  end
end
