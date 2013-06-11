class Post < ActiveRecord::Base
  has_and_belongs_to_many :keywords
  has_many :comments
  belongs_to :author
end