class Score
  def initialize(minpoint, default, maxpoint)
    @minpoint = minpoint.abs
    @default = default.abs
    @maxpoint = maxpoint.abs
  end
  attr_accessor :minpoint, :default, :maxpoint
def add(amount)
 amount += @minpoint
end
def addmax(amount)
  amount += @maxpoint
end
def donothing(amount)
  amount += @default
end
end
