class Nationality
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String

  has_many :players

  validates :name, :presence => true
  validates_uniqueness_of :name

  index({ name: 1 }, { unique: true })
end
