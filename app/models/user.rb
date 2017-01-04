class User < ActiveRecord::Base
  # validate :mismatch
  has_secure_password

  # def mismatch
  #   if :password_confirmation != :password || :password_confirmation == nil
  #     errors.add(:password, "passwords don't match")
  #   end
  # end
  #
  # def authenticate
  #   self if :password == self.password
  # end

end
