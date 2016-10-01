class Plane
  attr_reader :airport

  def initialize
    @landed = nil
  end

  def add_to(airport)
    fail_if_not_new
    airport.send(:add, self)
    @airport = airport
    set_as_landed
  end

  def landed?
    @landed
  end

  private

  def set_as_landed
    @landed = true
  end

  def fail_if_not_new
    fail "Plane is not new!" unless is_new?
  end

  def is_new?
    landed? == nil
  end
end
