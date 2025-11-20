extends ShapeStrategy

class_name Pyramid3D

var height_proportion : float

func _init():
	height_proportion = 2; # Default height proportion

func create_shape() -> Array:
	var s := size
	var h := size * height_proportion
	var apex_y := -s + h

	return [
		Vector3(0, apex_y, 0),
		Vector3(-s, -s, -s),
		Vector3(s, -s, -s),
		Vector3(s, -s, s),
		Vector3(-s, -s, s),
	]
	
func set_height_proportion(new_value : int) -> void:
	height_proportion = new_value
	
