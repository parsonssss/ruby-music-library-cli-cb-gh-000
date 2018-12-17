class Song
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    Song.all << self
  end

  def self.create name
    self.new.tap do |s|
      s.name = name
      s.save
    end
  end
  
end
    
    