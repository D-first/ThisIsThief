extends Object
class_name TreasureFactory

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

func create_none() -> Treasure:
	return Treasure.new(0,0,0,0)

func create_poor() -> Treasure:
	return Treasure.new(1,0,0,0)

func create_normal() -> Treasure:
	return Treasure.new(0,1,0,0)

func create_good() -> Treasure:
	return Treasure.new(0,0,1,0)

func create_master() -> Treasure:
	return Treasure.new(0,0,0,1)

func create_random() -> Treasure:
	var treasure_types = [create_poor(), create_normal(), create_good(), create_master()]
		
	return treasure_types[rng.randi_range(0, treasure_types.size() - 1)]