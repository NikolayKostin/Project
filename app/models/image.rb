class Image < ApplicationRecord
  belongs_to :theme
  validates_presence_of :name, :file
#  validates_length_of :file, 8
end