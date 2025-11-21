extends ProjectionStrategy

class_name Perspective4DProjection

# Distance of 4D camera to XYZ world along the w axis.
@export var w_distance := 2.0 

func project(shape: Array) -> Array:
	assert(shape.size() > 0, "Empty shape passed to 4D projection.")
	assert(typeof(shape[0]) == TYPE_VECTOR4, "Passed shape to a 4D projector does not consist of 4D Vectors")
	
	var projected = []
	for point in shape:
		var div = w_distance - point.w
		if abs(div) < 0.0001: div = 0.0001 # Prevent crash
		var w_factor = 1.0 / div
		projected.append(Vector3(point.x * w_factor, point.y * w_factor, point.z * w_factor))
	return projected
