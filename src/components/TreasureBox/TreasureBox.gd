extends Node2D
class_name TreasureBox

signal treasure_box_opened(quality)

var treasure: Treasure

func _ready():
	$Effect.interpolate_property($Sprites, 'scale', $Sprites.scale, Vector2(2.0, 2.0), 0.3,Tween.TRANS_QUAD, Tween.EASE_OUT)
	$Effect.interpolate_property($Sprites, 'modulate', $Sprites.modulate, Color(1,1,1,0), 0.3, Tween.TRANS_QUAD, Tween.EASE_OUT)

func init(treasure: Treasure):
	self.treasure = treasure


func open():
	$Sprites.play("open")
	$Effect.start()
	emit_signal("treasure_box_opened", treasure)


func _on_TouchedArea_input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int):
	if(event is InputEventMouseButton):
		if(event.button_index == BUTTON_LEFT and event.is_pressed()):
			$TouchedArea/shape.set_deferred("disabled", true)
			open()


func _on_VanishTimer_timeout():
	queue_free()


func _on_Effect_tween_completed(_object, _key):
	queue_free()