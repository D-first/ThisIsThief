extends Node2D

onready var treasure_store: TreasureStore = get_node("/root/TreasureStore")

var treasureBoxFactory = TreasureBoxFactory.new()

export var spawn_quantity: int

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

func spawn_treasure_box():
	for _i in range(spawn_quantity):
		var treasureBox = treasureBoxFactory.create_random_treasure()
		var posx = rng.randi_range(0, get_viewport().size.x)
		var posy = rng.randi_range(0, get_viewport().size.y)
		treasureBox.position = Vector2(posx, posy)
		treasureBox.connect("treasure_box_opened", self,"_on_treasure_box_opened")
		add_child(treasureBox)

func _on_SpawnTimer_timeout():
	spawn_treasure_box()

func _on_treasure_box_opened(treasure: Treasure):
	treasure_store.add(treasure)

func _on_PlayTimer_timeout():
	var _result = get_tree().change_scene("res://src/views/Result/Result.tscn")
