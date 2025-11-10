extends ProjectionStrategy

class_name Orthographic4DProjection

func project(shape : Array) -> Array:
	assert(shape.size() > 0, "Empty shape passed to 4D projection.")
	assert(typeof(shape[0]) == TYPE_VECTOR4, "Passed shape to a 4D projector does not consist of 4D Vectors")
	
	var projected_shape = []
	
	for point in shape:
		projected_shape.append(Vector3(point.x, point.y, point.z))
	
	return projected_shape
