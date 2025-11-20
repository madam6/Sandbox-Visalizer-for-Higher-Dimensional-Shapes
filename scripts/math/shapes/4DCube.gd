extends ShapeStrategy

class_name Cube4D

func create_shape() -> Array:
	return [
		Vector4(-size, -size, -size, -size),
		Vector4( size, -size, -size, -size),
		Vector4( size,  size, -size, -size),
		Vector4(-size,  size, -size, -size),

		Vector4(-size, -size,  size, -size),
		Vector4( size, -size,  size, -size),
		Vector4( size,  size,  size, -size),
		Vector4(-size,  size,  size, -size),

		Vector4(-size, -size, -size,  size),
		Vector4( size, -size, -size,  size),
		Vector4( size,  size, -size,  size),
		Vector4(-size,  size, -size,  size),

		Vector4(-size, -size,  size,  size),
		Vector4( size, -size,  size,  size),
		Vector4( size,  size,  size,  size),
		Vector4(-size,  size,  size,  size),
	]
