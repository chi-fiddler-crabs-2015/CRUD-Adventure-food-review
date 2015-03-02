class User < ActiveRecord::Base
  has_many :reviews, foreign_key: :reviewer_id

  has_many :connections
  has_many :friends, through: :connections

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end


end
