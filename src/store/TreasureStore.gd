extends Node
class_name TreasureStore

var total_treasure: Treasure

func _ready():
	reset()


func add(added_treasure: Treasure) -> void:
	total_treasure.poor_count += added_treasure.poor_count
	total_treasure.normal_count += added_treasure.normal_count
	total_treasure.good_count += added_treasure.good_count
	total_treasure.master_count += added_treasure.master_count


func reset() -> void:
	var treasureFactory = TreasureFactory.new()
	total_treasure = treasureFactory.create_none()