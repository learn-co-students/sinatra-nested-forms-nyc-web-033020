class Pirate

  attr_reader :name, :weight, :height

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    Pirate.all << self
  end

  def self.all
    @@all
  end

end