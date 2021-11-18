class User < ApplicationRecord
  def self.find_or_create_from_auth_hash(auth_hash)
    uid = auth_hash[:uid]
    display_name  = auth_hash[:info][:name]
    user_id = auth_hash[:info][:nickname]
    email = auth_hash[:info][:email]

    User.find_or_create_by(uid: uid) do |user|
      user.display_name = display_name
      user.user_id = user_id
      user.email = email
    end
  end
end
