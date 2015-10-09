class Student < ActiveRecord::Base

  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end

  def slug
    full_name.parameterize
  end

end

