extends Node2D
class_name Result

onready var treasure_store: TreasureStore = get_node("/root/TreasureStore")
onready var score: Score = get_node("MarginContainer/CenterContainer/VBoxContainer/Score")

func _ready():
	score.treasure = treasure_store.total_treasure

func _on_RetryButton_pressed():
	treasure_store.reset()
	var _result = get_tree().change_scene("res://src/views/Main/Main.tscn")
