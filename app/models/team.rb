class Team

  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, motto)
    @name = name
    @motto = motto
    @@all << self 
  end









end
