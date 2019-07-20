extends Object
class_name TreasureBoxFactory

var scene = preload("res://src/components/TreasureBox/TreasureBox.tscn")
var treasureFactory = TreasureFactory.new()

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

func create(treasure: Treasure) -> TreasureBox:
	var treasureBox = scene.instance()
	treasureBox.init(treasure)
	
	return treasureBox

func create_random_treasure() -> TreasureBox:
    return create(treasureFactory.create_random())