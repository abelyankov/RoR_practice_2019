class Post < ApplicationRecord
  validates_presence_of :title
  validates_uniqueness_of :title
  belongs_to :author
end
