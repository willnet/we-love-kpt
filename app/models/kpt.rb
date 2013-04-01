class Kpt < ActiveRecord::Base
  belongs_to :project
  has_many :keeps
  has_many :problems
  has_many :tries

  validates :name, presence: true, length: { maximum: 30 }
end
