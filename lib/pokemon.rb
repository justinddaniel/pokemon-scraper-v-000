class Pokemon

  attr_reader :id, :name, :type, :db

  def initialize(id = nil, name = nil, type = nil, db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    new_pokemon_name = db.execute("SELECT name FROM pokemon WHERE id = ?",id)
    new_pokemon_type = db.execute("SELECT type FROM pokemon WHERE id = ?",id)
    new_pokemon = Pokemon.new(id, new_pokemon_name, new_pokemon_type)
  end
end
