class User < ActiveRecord::Base
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :bloggs, through: :owners
  has_many :comments, as: :commentable
end
