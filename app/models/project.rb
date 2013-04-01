class Project < ActiveRecord::Base
  has_many :kpts

  validates :name, presence: true, length: { maximum: 30 }
end
