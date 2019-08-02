class Contact < ApplicationRecord
  # has_many :contact_groups
  # has_many :groups, through: :contact_groups
  # belongs_to :user
  def friendly_updated_at
    updated_at.strftime("%D")
  end

  def full_name
    "#{first_name} #{middlename} #{last_name}"
  end
  # validates :first_name, :last_name, presence: true
  # validate :email, format: {with: /@ }
end
