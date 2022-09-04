class Player
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :number, type: Integer
  field :birth_date, type: Date

  belongs_to :nationality, index: true
  belongs_to :position, index: true

  validates :name, :birth_date, :presence => true
  validates :number, numericality: {greater_than_or_equal_to: 0}

  def age
    today = Date.today
    age = today.year - birth_date.year

    age -= 1 if today.month > birth_date.month || (today.month == birth_date.month && today.day >= birth_date.day)
    age
  end

end
