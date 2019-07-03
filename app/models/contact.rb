class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%D")
  end

  def full_name
    "#{first_name} #{middlename} #{last_name}"
  end

 
end
