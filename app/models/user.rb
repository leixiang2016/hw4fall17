class User < ActiveRecord::Base
  def self.create_user!(arg)
    self.create!(arg.merge({:session_token => SecureRandom.base64}))
  end
end