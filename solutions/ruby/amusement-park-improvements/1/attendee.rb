class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.
  ride_minimum_height = 100
  
  def has_pass?
    if @pass_id == nil
      false
    else
      true
    end
  end  

  def fits_ride?(ride_minimum_height)
    if @height >= ride_minimum_height
      issue_pass!(@pass_id)
      true
    else
      false
    end  
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end
