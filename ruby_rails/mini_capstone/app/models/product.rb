class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :name, length: {maximum: 40}
  validates :price, numericality: {greater_than: 0}
  validates :price, numericality: {less_than_or_equal_to: 100}
  validates :description, length: {in: 1..500}

  TAX_RATE = 0.09

  def is_discounted?
    price < 30
  end

  def tax
    (price * TAX_RATE).round(2)
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end
