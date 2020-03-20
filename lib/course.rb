class Course
<<<<<<< HEAD
  attr_accessor :title, :description, :schedule
  @@all = []

=======
  attr_accessor :title, :schedule, :description

  @@all = []
>>>>>>> 35495d118893fd40a4ebceda92d5da32260cba4b
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
