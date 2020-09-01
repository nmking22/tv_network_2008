class Network
  attr_reader :name, :shows, :actors_by_show

  def initialize(name)
    @name = name
    @shows = []
    @actors_by_show = Hash.new
  end

  def add_show(show)
    @shows.unshift(show)
  end

  def populate_actors_by_show
    shows.each do |show|
      @actors_by_show[show] = show.actors
    end
  end

  def main_characters
    main_character = []
    shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500000 && character.name == character.name.upcase
          main_character << character
        end
      end
    end
    main_character
  end
end
