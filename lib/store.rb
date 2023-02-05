class Store < ActiveRecord::Base
  has_many :employees

  validates_length_of :name ,minimum: 3

  validate :must_carry_womens_or_mens

  def must_carry_womens_or_mens
    if !mens_apparel && !womens_apparel
      errors.add(:must_carry_womens_or_mens, " - Store must carry either men's or women's apparel!")
    end
  end
end
