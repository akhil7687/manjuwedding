class WedAttender < ApplicationRecord

  def status_name
    if status == 1
      return "Attending"
    elsif status == 2
      return "Maybe"
    elsif status == 3
      return "Not Attending"
    end
  end
end
