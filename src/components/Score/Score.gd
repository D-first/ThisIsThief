extends VBoxContainer
class_name Score

onready var treasure_store: TreasureStore = get_node("/root/TreasureStore")
var treasure: Treasure

func _ready():
	treasure = treasure_store.total_treasure
	$GridContainer2/poorValue.text = str(treasure.poor_count)
	$GridContainer2/normalValue.text = str(treasure.normal_count)
	$GridContainer2/goodValue.text = str(treasure.good_count)
	$GridContainer2/masterValue.text = str(treasure.master_count)
	$TotalAmount.text = str(treasure.amount())