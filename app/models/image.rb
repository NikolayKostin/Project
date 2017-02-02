class Image < ApplicationRecord
  belongs_to :theme
  has_many :values
  validates_presence_of :name, :file
  validate :file_size

  private
  #проверка размера изображения
  def file_size
    if file.size > 3.megabytes
      errors.add(:file, 'должен быть меньше 3Мб')
    end
  end
end