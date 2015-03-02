class User < ActiveRecord::Base
  has_many :reviews, foreign_key: :reviewer_id
  has_many :connections

end
