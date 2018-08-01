class Instrument
  attr_reader :type
  def initialize(type)
    @type  = type
    @broken = false
  end

  def broken?
    @broken
  end
end 
