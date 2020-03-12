class User < ApplicationRecord
  validates :name, uniqueness: true
  validates_format_of :name, :with => /\A[a-z]+\z/i
  validates :name, length: { is: 3 }
end
