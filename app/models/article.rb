class Article < ApplicationRecord
  validates :title, presence: true, length: { mininmum: 6, maximum: 100 }
  validates :description, presence: true, length: { mininmum: 10, maximum: 300 }
end 