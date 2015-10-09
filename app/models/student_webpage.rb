class StudentWebpage < ActiveRecord::Base

  belongs_to :student

  def slug
    name.parameterize
  end

end
