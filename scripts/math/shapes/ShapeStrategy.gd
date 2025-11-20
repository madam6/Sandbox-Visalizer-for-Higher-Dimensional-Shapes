extends RefCounted

class_name ShapeStrategy

var size : int

func _init() -> void:
	size = 5 # First default size

@warning_ignore("unused_parameter")
func create_shape() -> Array:
	push_error("ShapeStrategy.create_shape() is not implemented.")
	return []
	
func set_size(new_size : int) -> void:
	size = new_size
