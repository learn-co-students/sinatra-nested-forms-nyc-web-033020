class Pirate
  @@all = []
  attr_accessor :name, :height, :weight
  def initialize(name:,height:,weight:)
    @name = name
    @height = height
    @weight = weight
    @@all << self
  end
  def self.all
    @@all
  end
end
