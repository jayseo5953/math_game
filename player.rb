class Player
  attr_accessor :name, :life

  def initialize (name)
    @name = name
    @life = 3
    puts "#{@name} Joined!"
  end

  def lose_life
    self.life -= 1
  end

  def still_alive?
    self.life != 0
  end
end
