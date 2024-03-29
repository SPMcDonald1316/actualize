class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def friendly_created_at
    created_at.strftime("%m, %d, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%m, %d, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_country_code
    "+81 #{phone_number}"
  end

  def geolocate
    if address
      results = Geocoder.search(address)
      return results.first.coordinates
    else
      return [nil, nil]
    end
  end
end
