class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: {in: 1..100}
  validates :name, length: {maximum: 40}
  validates :description, {in: 10..500}

  TAX_RATE = 0.09
  
  def is_discounted?
    price < 10
  end

  def tax
    (price * TAX_RATE).round(2)
  end

  def total
    price + tax
  end
end
