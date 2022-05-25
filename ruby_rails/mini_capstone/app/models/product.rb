class Product < ApplicationRecord
  def is_discounted?
    price < 10
  end
end
