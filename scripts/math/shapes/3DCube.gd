extends ShapeStrategy

class_name Cube3D

func create_shape() -> Array:
	return [
		Vector3(-size, -size, -size),
		Vector3(size, -size, -size),
		Vector3(size, size, -size),
		Vector3(-size, size, -size),
		Vector3(-size, -size, size),
		Vector3(size, -size, size),
		Vector3(size, size, size),
		Vector3(-size, size, size), 
	]
