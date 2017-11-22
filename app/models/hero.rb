class Hero

  attr_accessor :name, :power, :biography

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    @@all << self
  end









end
