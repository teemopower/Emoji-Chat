class User < ApplicationRecord
  # add validation
  validates :email,
  presence: true,
  uniqueness: { case_sensitive: false }

  #need to install bcrypt gem, creates a password digest
  has_secure_password

  validates :password,
  length: { in: 8..72 },
  on: :creates

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end

end
