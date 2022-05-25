class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%m, %d, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%m, %d, %Y")
  end
end
