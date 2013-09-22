# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  # has_secure_password requires the presence of password, requires a match, and
  # adds authenticate() to compare the encrypted password to the password_digest
  has_secure_password

  before_save { |user| user.email = email.downcase }

  # validate the name attribute is present, length <= 50
  validates :name, presence: true, length: { maximum: 50 }

  # REGEX  #################################################
  # /				start of regex
  # \A 				match start of string
  # [\w+\-.]+		at least one word character, plus, hyphen, or dot
  # @				literal "at sign"
  # [a-z\d\-.]+		at least one letter, digit, hyphen, or dot
  # \.				literal dot
  # [a-z]+			at least one letter
  # \a-z 			match end of string
  # /				end of regex
  # i 				case insensitive
  ##########################################################
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  #validate the email attribute is present, matches regex, is unique (case_sensitive)
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
  				    uniqueness: { case_sensitive: false }

  #validates the password >= 6
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
