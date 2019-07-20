extends Object
class_name Treasure

var poor_count: = 0
var normal_count: = 0
var good_count: = 0
var master_count: = 0

func _init(poor_count:int, normal_count:int, good_count:int, master_count:int) -> void:
	self.poor_count = poor_count
	self.normal_count = normal_count
	self.good_count = good_count
	self.master_count = master_count


func amount() -> int:
	return poor_count * 100 + \
	       normal_count * 500 + \
		   good_count * 1000 + \
		   master_count * 5000